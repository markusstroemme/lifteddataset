@global_var_8c829 = external constant [5 x i8]
@global_var_bc1f4 = external local_unnamed_addr global i32

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_22ef1:
  %0 = load i32, ptr @global_var_bc1f4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_22f24, label %dec_label_pc_22f0b

dec_label_pc_22f0b:                               ; preds = %dec_label_pc_22ef1
  %2 = add i64 %data, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_22f24

dec_label_pc_22f24:                               ; preds = %dec_label_pc_22f0b, %dec_label_pc_22ef1
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_22f27:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = zext i32 %3 to i64
  %5 = mul i64 %4, 1152921504606846976
  %6 = call i32 @rand()
  %7 = zext i32 %6 to i64
  %8 = mul i64 %7, 35184372088832
  %9 = call i32 @rand()
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 1073741824
  %12 = call i32 @rand()
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 32768
  %15 = call i32 @rand()
  %16 = sext i32 %15 to i64
  %17 = sext i1 %2 to i64
  %18 = xor i64 %5, %17
  %19 = xor i64 %18, %8
  %20 = xor i64 %19, %11
  %21 = xor i64 %20, %14
  %storemerge = xor i64 %21, %16
  store i32 1, ptr @global_var_bc1f4, align 4
  call void @anon1(i64 %storemerge)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

