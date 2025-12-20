@global_var_771c0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_480e1:
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
  %12 = icmp eq i32 %storemerge.in, -2147483648
  br i1 %12, label %dec_label_pc_48190, label %dec_label_pc_48167

dec_label_pc_48167:                               ; preds = %dec_label_pc_480e1
  %13 = sub i32 0, %storemerge.in
  %14 = icmp slt i32 %13, 0
  %15 = icmp eq i1 %14, false
  %16 = select i1 %15, i32 %13, i32 %storemerge.in
  %17 = icmp sgt i32 %16, 46339
  br i1 %17, label %dec_label_pc_48190, label %dec_label_pc_4817b

dec_label_pc_4817b:                               ; preds = %dec_label_pc_48167
  %18 = mul i32 %storemerge.in, %storemerge.in
  call void @printIntLine(i32 %18)
  br label %dec_label_pc_4819f

dec_label_pc_48190:                               ; preds = %dec_label_pc_48167, %dec_label_pc_480e1
  call void @printLine(ptr @global_var_771c0)
  br label %dec_label_pc_4819f

dec_label_pc_4819f:                               ; preds = %dec_label_pc_48190, %dec_label_pc_4817b
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_481b4, label %dec_label_pc_481af

dec_label_pc_481af:                               ; preds = %dec_label_pc_4819f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_481b4

dec_label_pc_481b4:                               ; preds = %dec_label_pc_481af, %dec_label_pc_4819f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

