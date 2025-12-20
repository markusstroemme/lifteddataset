@global_var_82700 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_105de:
  %stack_var_-17 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 127, ptr %stack_var_-17, align 1
  call void @anon0(ptr nonnull %stack_var_-17)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_10622, label %dec_label_pc_1061d

dec_label_pc_1061d:                               ; preds = %dec_label_pc_105de
  call void @__stack_chk_fail()
  br label %dec_label_pc_10622

dec_label_pc_10622:                               ; preds = %dec_label_pc_1061d, %dec_label_pc_105de
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_106c5:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = icmp eq i8 %2, 127
  br i1 %3, label %dec_label_pc_1070b, label %dec_label_pc_106ed

dec_label_pc_106ed:                               ; preds = %dec_label_pc_106c5
  %4 = trunc i64 %1 to i32
  %5 = mul i32 %4, 16777216
  %sext = add i32 %5, 16777216
  %6 = udiv i32 %sext, 16777216
  %7 = trunc i32 %6 to i8
  call void @printHexCharLine(i8 %7)
  br label %dec_label_pc_1071a

dec_label_pc_1070b:                               ; preds = %dec_label_pc_106c5
  call void @printLine(ptr @global_var_82700)
  br label %dec_label_pc_1071a

dec_label_pc_1071a:                               ; preds = %dec_label_pc_1070b, %dec_label_pc_106ed
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

