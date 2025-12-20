@global_var_88930 = external constant [54 x i8]
@global_var_8ca7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4a4e5:
  %storemerge1.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %storemerge1.reg2mem, align 4
  br i1 %1, label %dec_label_pc_4a559, label %dec_label_pc_4a507

dec_label_pc_4a507:                               ; preds = %dec_label_pc_4a4e5
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = mul i32 %5, 1073741824
  %7 = call i32 @rand()
  %8 = mul i32 %7, 32768
  %9 = xor i32 %8, %6
  %10 = call i32 @rand()
  %11 = xor i32 %9, %10
  %12 = sext i1 %4 to i32
  %storemerge.in = xor i32 %11, %12
  store i32 %storemerge.in, ptr %storemerge1.reg2mem, align 4
  br label %dec_label_pc_4a559

dec_label_pc_4a559:                               ; preds = %dec_label_pc_4a4e5, %dec_label_pc_4a507
  %storemerge1.reload = load i32, ptr %storemerge1.reg2mem, align 4
  %13 = call i32 @globalReturnsTrueOrFalse()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_4a57d, label %dec_label_pc_4a567

dec_label_pc_4a567:                               ; preds = %dec_label_pc_4a559
  %15 = add i32 %storemerge1.reload, 1
  call void @printIntLine(i32 %15)
  br label %dec_label_pc_4a5ab

dec_label_pc_4a57d:                               ; preds = %dec_label_pc_4a559
  %16 = icmp eq i32 %storemerge1.reload, 2147483647
  br i1 %16, label %dec_label_pc_4a59c, label %dec_label_pc_4a586

dec_label_pc_4a586:                               ; preds = %dec_label_pc_4a57d
  %17 = add i32 %storemerge1.reload, 1
  call void @printIntLine(i32 %17)
  br label %dec_label_pc_4a5ab

dec_label_pc_4a59c:                               ; preds = %dec_label_pc_4a57d
  call void @printLine(ptr @global_var_88930)
  br label %dec_label_pc_4a5ab

dec_label_pc_4a5ab:                               ; preds = %dec_label_pc_4a59c, %dec_label_pc_4a586, %dec_label_pc_4a567
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
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

