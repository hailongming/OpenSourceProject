# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html
import codecs
import pymysql
import MySQLdb.cursors
from scrapy.exceptions import DropItem


class DuplicatesPipeline(object):

    def __init__(self):
        self.title_seen = set()

    def process_item(self, item, spider):
        if item['title'] in self.title_seen:
            raise DropItem("Duplicate item found: %s" % item)
        else:
            self.title_seen.add(item['title'])
            return item


def dbHandle():
    conn = pymysql.connect(
        host = '127.0.0.1',
        user = 'root',
        password = '',
        charset = 'utf8',
        use_unicode = False
    )
    return conn



class SsdutPipeline(object):
    times = {'09': 0, '10': 0, '11': 0, '12': 0,'05':0,'06':0,'07':0,'08':0}
    def __init__(self):
        self.file = codecs.open('item.json', 'w', encoding='utf-8')

    def process_item(self, item, spider):
        # 对获取到的数据进行整理
        time_string = item['time']
        real_time = time_string.split()
        real_time = real_time[0].encode('utf-8')
        real_title = item['title'][0].encode('utf-8')
        link_part1 = item['link'][0].split('/')[2]
        link_part2 = item['link'][0].split('/')[3]
        link_part3 = item['link'][0].split('/')[4]
        real_link = "http://ssdut.dlut.edu.cn" + "/" + link_part1 + "/" + link_part2 + "/" + link_part3
        #print "------------------"
        #print real_time
        #print real_link
        #print real_title
        # print SsdutPipeline.times
        #print "******************"
        item['title'][0] = real_title
        item['time'] = real_time
        item['link'][0] = real_link
        print "------------------"
        print item['title'][0]
        print item['link'][0]
        print item['time']
        print "******************"
        #line = json.dumps(dict(item), ensure_ascii=False) + "\n"
        #self.file.write(line)
        month = real_time.split('-')[1]
        if int(month)>=5 and int(month)<=12:
            SsdutPipeline.times[month] = SsdutPipeline.times[month] + 1
        print "++++++++++++++++++"
        print SsdutPipeline.times

        # 存入数据库
        dbobject = dbHandle()
        cursor = dbobject.cursor()
        sql = 'insert into SSDUT.xszz_xszz(title, link, time) values (%s,%s,%s)'

        try:
            cursor.execute(sql, (item['title'][0], item['link'][0], item['time']))
            dbobject.commit()
            print "已插入已插入已插入！！！！！！！！！！！！！"
        except Exception as e:
            print e
            print "插入失败 插入失败插入失败插入失败"
            dbobject.rollback()
        return item

    def spider_closed(self, spider):

        self.file.close()

class MySQLPipeline(object):
    def process_item(self, item, spider):
        dbobject = dbHandle()
        cursor = dbobject.cursor()
        sql = 'insert into SSDUT.xszz_xszz(title, link, time) values (%s,%s,%s)'

        try:
            cursor.execute(sql,(item['title'],item['link'],item['time']))
            dbobject.commit()
        except Exception,e:
            print e
            dbobject.rollback()

        return item
