@global_var_95449 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_62b07:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, 1152921504606846976
  %7 = call i32 @rand()
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, 35184372088832
  %10 = call i32 @rand()
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 1073741824
  %13 = call i32 @rand()
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 32768
  %16 = call i32 @rand()
  %17 = sext i32 %16 to i64
  %18 = sext i1 %3 to i64
  %19 = xor i64 %6, %18
  %20 = xor i64 %19, %9
  %21 = xor i64 %20, %12
  %22 = xor i64 %21, %15
  %storemerge = xor i64 %22, %17
  %23 = icmp slt i64 %storemerge, 1
  br i1 %23, label %dec_label_pc_62bf5, label %dec_label_pc_62bde

dec_label_pc_62bde:                               ; preds = %dec_label_pc_62b07
  %24 = mul i64 %storemerge, 2
  call void @printLongLongLine(i64 %24)
  br label %dec_label_pc_62bf5

dec_label_pc_62bf5:                               ; preds = %dec_label_pc_62bde, %dec_label_pc_62b07
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_62c0a, label %dec_label_pc_62c05

dec_label_pc_62c05:                               ; preds = %dec_label_pc_62bf5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_62c0a

dec_label_pc_62c0a:                               ; preds = %dec_label_pc_62c05, %dec_label_pc_62bf5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

