<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "Profile".
 *
 * @property integer $id
 * @property string $title
 * @property string $slug
 * @property string $text
 * @property string $Complete_Name
 * @property string $Nickname
 * @property string $Email_Address
 * @property string $Home_Address
 * @property string $Gender
 * @property integer $Cell_phone_number
 * @property string $Comments
 */
class Profile extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'Profile';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'title', 'slug', 'text', 'Complete_Name', 'Nickname', 'Email_Address', 'Home_Address', 'Gender', 'Cell_phone_number', 'Comments'], 'required'],
            [['id', 'Cell_phone_number'], 'integer'],
            [['text'], 'string'],
            [['title', 'slug', 'Home_Address'], 'string', 'max' => 128],
            [['Complete_Name', 'Email_Address'], 'string', 'max' => 32],
            [['Nickname'], 'string', 'max' => 8],
            [['Gender'], 'string', 'max' => 2],
            [['Comments'], 'string', 'max' => 300],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'slug' => 'Slug',
            'text' => 'Text',
            'Complete_Name' => 'Complete  Name',
            'Nickname' => 'Nickname',
            'Email_Address' => 'Email  Address',
            'Home_Address' => 'Home  Address',
            'Gender' => 'Gender',
            'Cell_phone_number' => 'Cell Phone Number',
            'Comments' => 'Comments',
        ];
    }
}
