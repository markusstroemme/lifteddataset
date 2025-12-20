@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_45e05:
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
  %12 = icmp slt i32 %storemerge.in, 1
  br i1 %12, label %dec_label_pc_45e9a, label %dec_label_pc_45e88

dec_label_pc_45e88:                               ; preds = %dec_label_pc_45e05
  %13 = mul i32 %storemerge.in, 2
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_45e9a

dec_label_pc_45e9a:                               ; preds = %dec_label_pc_45e88, %dec_label_pc_45e05
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_45eaf, label %dec_label_pc_45eaa

dec_label_pc_45eaa:                               ; preds = %dec_label_pc_45e9a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_45eaf

dec_label_pc_45eaf:                               ; preds = %dec_label_pc_45eaa, %dec_label_pc_45e9a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

