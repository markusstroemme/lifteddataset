@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_30ed1:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge.in = xor i32 %10, %11
  %12 = icmp eq i32 %storemerge.in, 0
  br i1 %12, label %dec_label_pc_30f80, label %dec_label_pc_30f6e

dec_label_pc_30f6e:                               ; preds = %dec_label_pc_30ed1
  %13 = mul i32 %storemerge.in, 2
  call void @printUnsignedLine(i32 %13)
  br label %dec_label_pc_30f80

dec_label_pc_30f80:                               ; preds = %dec_label_pc_30f6e, %dec_label_pc_30ed1
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_30f95, label %dec_label_pc_30f90

dec_label_pc_30f90:                               ; preds = %dec_label_pc_30f80
  call void @__stack_chk_fail()
  br label %dec_label_pc_30f95

dec_label_pc_30f95:                               ; preds = %dec_label_pc_30f90, %dec_label_pc_30f80
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

