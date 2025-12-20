@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_12e89:
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
  call void @anon1(i32 %storemerge.in)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_12fab:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_12fff:
  %0 = icmp slt i32 %data, 1
  br i1 %0, label %dec_label_pc_13026, label %dec_label_pc_13014

dec_label_pc_13014:                               ; preds = %dec_label_pc_12fff
  %1 = mul i32 %data, 2
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_13026

dec_label_pc_13026:                               ; preds = %dec_label_pc_13014, %dec_label_pc_12fff
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

