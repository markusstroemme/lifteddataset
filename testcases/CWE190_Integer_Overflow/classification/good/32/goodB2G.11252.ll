@global_var_6bfe0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3101e:
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
  br i1 %12, label %dec_label_pc_310e7, label %dec_label_pc_310bb

dec_label_pc_310bb:                               ; preds = %dec_label_pc_3101e
  %13 = icmp ult i32 %storemerge.in, 2147483647
  br i1 %13, label %dec_label_pc_310c4, label %dec_label_pc_310d8

dec_label_pc_310c4:                               ; preds = %dec_label_pc_310bb
  %14 = mul i32 %storemerge.in, 2
  call void @printUnsignedLine(i32 %14)
  br label %dec_label_pc_310e7

dec_label_pc_310d8:                               ; preds = %dec_label_pc_310bb
  call void @printLine(ptr @global_var_6bfe0)
  br label %dec_label_pc_310e7

dec_label_pc_310e7:                               ; preds = %dec_label_pc_310d8, %dec_label_pc_310c4, %dec_label_pc_3101e
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_310fc, label %dec_label_pc_310f7

dec_label_pc_310f7:                               ; preds = %dec_label_pc_310e7
  call void @__stack_chk_fail()
  br label %dec_label_pc_310fc

dec_label_pc_310fc:                               ; preds = %dec_label_pc_310f7, %dec_label_pc_310e7
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
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

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

