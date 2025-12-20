@global_var_889d0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_4bf61:
  %0 = icmp eq i32 %data, 2147483647
  br i1 %0, label %dec_label_pc_4bf8f, label %dec_label_pc_4bf79

dec_label_pc_4bf79:                               ; preds = %dec_label_pc_4bf61
  %1 = add i32 %data, 1
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_4bf9e

dec_label_pc_4bf8f:                               ; preds = %dec_label_pc_4bf61
  call void @printLine(ptr @global_var_889d0)
  br label %dec_label_pc_4bf9e

dec_label_pc_4bf9e:                               ; preds = %dec_label_pc_4bf8f, %dec_label_pc_4bf79
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_4bfa1:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  call void @anon0(i32 %storemerge.in)
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

