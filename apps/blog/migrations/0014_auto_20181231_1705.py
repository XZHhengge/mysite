# Generated by Django 2.1.4 on 2018-12-31 17:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0013_auto_20181231_1645'),
    ]

    operations = [
        migrations.AlterField(
            model_name='myself',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='myself/%Y/%m', verbose_name='个性图片'),
        ),
    ]