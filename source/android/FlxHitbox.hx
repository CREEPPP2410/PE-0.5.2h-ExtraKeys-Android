package android;

import flixel.graphics.frames.FlxAtlasFrames;
import flixel.graphics.FlxGraphic;
import flixel.group.FlxSpriteGroup;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.ui.FlxButton;
import flixel.FlxSprite;

class FlxHitbox extends FlxSpriteGroup
{
    public var hitbox:FlxSpriteGroup;
    public var frameshb:FlxAtlasFrames;

    public var array:Array<Array<Dynamic>> = [];

    public var k1:FlxButton;
    public var k2:FlxButton;
    public var k3:FlxButton;
    public var k4:FlxButton;
    public var k5:FlxButton;
    public var k6:FlxButton;
    public var k7:FlxButton;
    public var k8:FlxButton;
    public var k9:FlxButton;
    public var k10:FlxButton;    
    public var k11:FlxButton;  
    
    public function new(htype:HitboxType = FOUR)
    {
        super();

        hitbox = new FlxSpriteGroup();
        hitbox.scrollFactor.set();

        k1 = new FlxButton(0, 0);
        k2 = new FlxButton(0, 0);
        k3 = new FlxButton(0, 0);
        k4 = new FlxButton(0, 0);
        k5 = new FlxButton(0, 0);
        k6 = new FlxButton(0, 0);
        k7 = new FlxButton(0, 0);
        k8 = new FlxButton(0, 0);
        k9 = new FlxButton(0, 0);
        k10 = new FlxButton(0, 0);
        k11 = new FlxButton(0, 0);

        var hitbox_hint:FlxSprite = new FlxSprite(0, 0);

        switch (htype)
        {
            case ONE:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/1k_hint'));
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitbox/1k');

                hitbox.add(add(k1 = createhitbox(0, "k1")));
            }
            case TWO:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/2k_hint'));
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitbox/2k');

                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(720, "k2")));
            }
            case THREE:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/3k_hint'));
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitbox/3k');

                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(426, "k2")));
                hitbox.add(add(k3 = createhitbox(852, "k3")));
            }
            case FOUR:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/4k_hint'));
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitbox/4k');

                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(320, "k2")));
                hitbox.add(add(k3 = createhitbox(640, "k3")));
                hitbox.add(add(k4 = createhitbox(960, "k4")));
            }
            case FIVE:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/5k_hint'));
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitbox/5k');

                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(256, "k2")));
                hitbox.add(add(k3 = createhitbox(512, "k3")));
                hitbox.add(add(k4 = createhitbox(768, "k4")));
                hitbox.add(add(k5 = createhitbox(1024, "k5")));
            } 
            case SIX:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/6k_hint'));
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitbox/6k');

                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(213, "k2")));
                hitbox.add(add(k3 = createhitbox(426, "k3")));
                hitbox.add(add(k4 = createhitbox(639, "k4")));
                hitbox.add(add(k5 = createhitbox(852, "k5")));
                hitbox.add(add(k6 = createhitbox(1065, "k6")));
            }
            case SEVEN:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/7k_hint'));
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitbox/7k');

                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(182, "k2")));
                hitbox.add(add(k3 = createhitbox(364, "k3")));
                hitbox.add(add(k4 = createhitbox(546, "k4")));
                hitbox.add(add(k5 = createhitbox(728, "k5")));
                hitbox.add(add(k6 = createhitbox(910, "k6")));
                hitbox.add(add(k7 = createhitbox(1092, "k7")));
            }
            case EIGHT:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/8k_hint'));
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitbox/8k');

                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(160, "k2")));
                hitbox.add(add(k3 = createhitbox(320, "k3")));
                hitbox.add(add(k4 = createhitbox(480, "k4")));
                hitbox.add(add(k5 = createhitbox(640, "k5")));
                hitbox.add(add(k6 = createhitbox(800, "k6")));
                hitbox.add(add(k7 = createhitbox(960, "k7")));
                hitbox.add(add(k8 = createhitbox(1120, "k8")));
            }
            case NINE:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/9k_hint'));
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitbox/9k');

                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(142, "k2")));
                hitbox.add(add(k3 = createhitbox(284, "k3")));
                hitbox.add(add(k4 = createhitbox(426, "k4")));
                hitbox.add(add(k5 = createhitbox(568, "k5")));
                hitbox.add(add(k6 = createhitbox(710, "k6")));
                hitbox.add(add(k7 = createhitbox(852, "k7")));
                hitbox.add(add(k8 = createhitbox(994, "k8")));
                hitbox.add(add(k9 = createhitbox(1136, "k9")));
            }
            case TEN:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/10k_hint'));
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitbox/10k');

                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(128, "k2")));
                hitbox.add(add(k3 = createhitbox(256, "k3")));
                hitbox.add(add(k4 = createhitbox(384, "k4")));    
                hitbox.add(add(k5 = createhitbox(512, "k5")));
                hitbox.add(add(k6 = createhitbox(640, "k6"))); 
                hitbox.add(add(k7 = createhitbox(768, "k7")));
                hitbox.add(add(k8 = createhitbox(896, "k8"))); 
                hitbox.add(add(k9 = createhitbox(1024, "k9")));
                hitbox.add(add(k10 = createhitbox(1152, "k10")));
            }
            case ELEVEN:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitbox/11k_hint'));
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitbox/11k');

                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(116, "k2")));
                hitbox.add(add(k3 = createhitbox(232, "k3")));
                hitbox.add(add(k4 = createhitbox(348, "k4")));    
                hitbox.add(add(k5 = createhitbox(464, "k5")));
                hitbox.add(add(k6 = createhitbox(581, "k6"))); 
                hitbox.add(add(k7 = createhitbox(699, "k7")));
                hitbox.add(add(k8 = createhitbox(816, "k8"))); 
                hitbox.add(add(k9 = createhitbox(932, "k9")));
                hitbox.add(add(k10 = createhitbox(1048, "k10"))); 
                hitbox.add(add(k11 = createhitbox(1164, "k11"))); 
            }
        }

        array = [k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11];
        hitbox_hint.alpha = 0.75;
        add(hitbox_hint);
    }

    public function createhitbox(X:Float, framestring:String) {
        var button = new FlxButton(X, 0);

        var graphic:FlxGraphic = FlxGraphic.fromFrame(frameshb.getByName(framestring));
        button.loadGraphic(graphic);
        button.alpha = 0;

        button.onDown.callback = function (){
            FlxTween.num(0, 0.75, .075, {ease: FlxEase.circInOut}, function (a:Float) { button.alpha = a; });
        };

        button.onUp.callback = function (){
            FlxTween.num(0.75, 0, .1, {ease: FlxEase.circInOut}, function (a:Float) { button.alpha = a; });
        }

        button.onOut.callback = function (){
            FlxTween.num(button.alpha, 0, .2, {ease: FlxEase.circInOut}, function (a:Float) { button.alpha = a; });
        }

        return button;
    }

    override public function destroy():Void
    {
            super.destroy();

            k1 = null;
            k2 = null;
            k3 = null;
            k4 = null;
            k5 = null;
            k6 = null;
            k7 = null;
            k8 = null;
            k9 = null;
            k10 = null;
            k11 = null;
    }
}

enum HitboxType {
    ONE;
    TWO;
    THREE;
    FOUR;
    FIVE;
    SIX;
    SEVEN;
    EIGHT;
    NINE;
    TEN;
    ELEVEN;
}
