@global_var_82b50 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_12665:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = sext i1 %3 to i32
  %storemerge6 = xor i32 %6, %7
  %storemerge5.in = mul i32 %storemerge6, 16777216
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  %10 = trunc i32 %storemerge6 to i8
  %11 = icmp eq i8 %10, 127
  br i1 %9, label %dec_label_pc_1272a, label %dec_label_pc_126f5

dec_label_pc_126f5:                               ; preds = %dec_label_pc_12665
  br i1 %11, label %dec_label_pc_12719, label %dec_label_pc_126fb

dec_label_pc_126fb:                               ; preds = %dec_label_pc_126f5
  %sext2 = add i32 %storemerge5.in, 16777216
  %12 = udiv i32 %sext2, 16777216
  %13 = trunc i32 %12 to i8
  call void @printHexCharLine(i8 %13)
  br label %dec_label_pc_1275d

dec_label_pc_12719:                               ; preds = %dec_label_pc_126f5
  call void @printLine(ptr @global_var_82b50)
  br label %dec_label_pc_1275d

dec_label_pc_1272a:                               ; preds = %dec_label_pc_12665
  br i1 %11, label %dec_label_pc_1274e, label %dec_label_pc_12730

dec_label_pc_12730:                               ; preds = %dec_label_pc_1272a
  %sext3 = add i32 %storemerge5.in, 16777216
  %14 = udiv i32 %sext3, 16777216
  %15 = trunc i32 %14 to i8
  call void @printHexCharLine(i8 %15)
  br label %dec_label_pc_1275d

dec_label_pc_1274e:                               ; preds = %dec_label_pc_1272a
  call void @printLine(ptr @global_var_82b50)
  br label %dec_label_pc_1275d

dec_label_pc_1275d:                               ; preds = %dec_label_pc_1274e, %dec_label_pc_12730, %dec_label_pc_12719, %dec_label_pc_126fb
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

