@global_var_700a8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_50972:
  %rax.0.reg2mem = alloca i64, align 8
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
  br i1 %12, label %dec_label_pc_50a21, label %dec_label_pc_509f5

dec_label_pc_509f5:                               ; preds = %dec_label_pc_50972
  %13 = icmp ult i32 %storemerge.in, 2147483647
  br i1 %13, label %dec_label_pc_509fe, label %dec_label_pc_50a12

dec_label_pc_509fe:                               ; preds = %dec_label_pc_509f5
  %14 = mul i32 %storemerge.in, 2
  call void @printUnsignedLine(i32 %14)
  br label %dec_label_pc_50a21

dec_label_pc_50a12:                               ; preds = %dec_label_pc_509f5
  call void @printLine(ptr @global_var_700a8)
  br label %dec_label_pc_50a21

dec_label_pc_50a21:                               ; preds = %dec_label_pc_50a12, %dec_label_pc_509fe, %dec_label_pc_50972
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_50a36, label %dec_label_pc_50a31

dec_label_pc_50a31:                               ; preds = %dec_label_pc_50a21
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_50a36

dec_label_pc_50a36:                               ; preds = %dec_label_pc_50a31, %dec_label_pc_50a21
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

