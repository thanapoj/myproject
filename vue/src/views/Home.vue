<template>
  <div class="home">
การส่งงาน<br>
-Zend Framework การเปลี่ยนชื่อ Controller เป็นชื่ออื่นจะ Set ค่อยข้างเยอะจึงขอใช้เป็น<br> 
module/Application/src/Controller/IndexController.php ตามค่า Defualt<br><br>
-Function Find ไม่แน่ใจถูกต้องไหม เพราะไม่แน่ใจส่วนของ Input เลยทำเป็นการใช้ Plugin ของ Zend Framework 3 แทน<br>
โดยเป็นการหาค่าสำเร็จเรียบร้อยแล้ว แล้วใช้ Vue js ดึงค่ามาแสดงผล<br><br>
-ส่วนของ Restaurant จากที่อ่านข้อมูล น่าจะเป็นการรับค่าเป็น Location แล้วทำ Back-end หลังบ้านแล้วใช้ Front-end แสดงผล<br>
แต่เนื่องจากมี โค๊ตเก่าอยู่จึงขอนำมาทำเพิ่ม โดยการแสดงการเปลี่ยน Function ตอน Submit ให้อยู่ในรูปแบบ Vue Cli 3<br>
และนำมาแสดงผล Run บน Vue แต่เนื่องจากยังดึงค่า Google Map API จึงทำให้เวลา Refresh หน้า (กดปุ่ม F5) Restaurant ซ้ำจะไม่แสดงผล<br><br>
-ใช้ Vue Cli 3 ในการทำงานร่วมกับ Bootstrap<br><br>
-Zend Framework Map จะใช้ File Cache โดยเก็บเป็นชื่อไฟล์ ค่าพิกัดที่ User ค้นหา ถ้าเคยเรียกแล้วจะแสดงผลขึ้นมาทันที<br>
ส่วนที่เก็บของไฟล์ Cache คือ public/file/map ส่วนของ Find จะเก็บค่าในชื่อของ find.txt ส่วนของ public/file/find<br><br> 
-เขียน Code บน Directadmin ซึ่งเป็น Server จริงเลยยังไม่ได้จัดระเบียบ Code ให้นะครับ ต้องขออภัยด้วยครับ<br><br>
<img src="/image/Flowchart-Web.png" class="responsive"><br><br>
<img src="/image/Flowchart-Line-Database.png" class="responsive"><br><br>
<img src="/image/Flow-Diagram-Line-Messaging.png" class="responsive"><br><br>

  </div>
</template>

<script>

export default {
  name: 'home',
}
</script>

<style>
.responsive {
  width: 100%;
  height: auto;
 border: 1px solid #ccc;
 padding: 2px;
}
</style>
