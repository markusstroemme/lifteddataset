@global_var_8a5b8 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_599d5:
  %0 = call i32 @rand()
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = urem i32 %0, 2
  %5 = icmp eq i32 %4, 0
  %6 = mul i32 %2, 32768
  %7 = xor i32 %3, %6
  %8 = sext i1 %5 to i32
  %storemerge3.in.le = xor i32 %7, %8
  %9 = trunc i32 %storemerge3.in.le to i16
  %10 = icmp eq i16 %9, 32767
  br i1 %10, label %dec_label_pc_599fd, label %dec_label_pc_599dd

dec_label_pc_599dd:                               ; preds = %dec_label_pc_599d5
  %sext1.le = mul i32 %storemerge3.in.le, 65536
  %sext = add i32 %sext1.le, 65536
  %11 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_59a16

dec_label_pc_599fd:                               ; preds = %dec_label_pc_599d5
  call void @printLine(ptr @global_var_8a5b8)
  br label %dec_label_pc_59a16

dec_label_pc_59a16:                               ; preds = %dec_label_pc_599dd, %dec_label_pc_599fd
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
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

