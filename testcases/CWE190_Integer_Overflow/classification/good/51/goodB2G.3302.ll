@global_var_82f30 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_14382:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = sext i1 %2 to i32
  %storemerge.in = xor i32 %5, %6
  %storemerge = trunc i32 %storemerge.in to i8
  call void @anon0(i8 %storemerge)
  ret void
}

define void @anon0(i8 %data) local_unnamed_addr {
dec_label_pc_14450:
  %0 = icmp eq i8 %data, 127
  br i1 %0, label %dec_label_pc_14485, label %dec_label_pc_14467

dec_label_pc_14467:                               ; preds = %dec_label_pc_14450
  %1 = add i8 %data, 1
  call void @printHexCharLine(i8 %1)
  br label %dec_label_pc_14494

dec_label_pc_14485:                               ; preds = %dec_label_pc_14450
  call void @printLine(ptr @global_var_82f30)
  br label %dec_label_pc_14494

dec_label_pc_14494:                               ; preds = %dec_label_pc_14485, %dec_label_pc_14467
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

