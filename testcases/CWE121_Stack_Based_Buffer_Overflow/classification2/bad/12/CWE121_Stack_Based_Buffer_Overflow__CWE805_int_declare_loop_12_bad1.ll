@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_53e30:
  %.reg2mem = alloca i64, align 8
  %dataBadBuffer_-1040 = alloca [50 x i32], align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1032 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %stack_var_-824.stack_var_-1032 = select i1 %2, ptr %stack_var_-824, ptr %stack_var_-1032
  %3 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 50)
  store [50 x i32] [i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef], ptr %dataBadBuffer_-1040, align 8
  %4 = bitcast ptr %dataBadBuffer_-1040 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp ult i64 %5, 100
  br i1 %6, label %dec_label_pc_53e9e.lr.ph, label %dec_label_pc_53ed9

dec_label_pc_53e9e.lr.ph:                         ; preds = %dec_label_pc_53e30
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %8 = ptrtoint ptr %stack_var_-824.stack_var_-1032 to i64
  %9 = add i64 %7, -416
  store i64 %5, ptr %.reg2mem, align 8
  br label %dec_label_pc_53e9e

dec_label_pc_53e9e:                               ; preds = %dec_label_pc_53e9e.lr.ph, %dec_label_pc_53e9e
  %.reload = load i64, ptr %.reg2mem, align 8
  %10 = mul i64 %.reload, 4
  %11 = add i64 %10, %8
  %12 = add i64 %9, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i64 %11 to ptr
  store i32 %14, ptr %15, align 4
  %16 = load i64, ptr %4, align 8
  %17 = trunc i64 %16 to i32
  %18 = add i32 %17, 1
  %19 = insertvalue [50 x i32] undef, i32 %18, 0
  store [50 x i32] %19, ptr %dataBadBuffer_-1040, align 8
  %20 = load i64, ptr %4, align 8
  %21 = icmp ult i64 %20, 100
  store i64 %20, ptr %.reg2mem, align 8
  br i1 %21, label %dec_label_pc_53e9e, label %dec_label_pc_53ed9

dec_label_pc_53ed9:                               ; preds = %dec_label_pc_53e9e, %dec_label_pc_53e30
  %storemerge = bitcast ptr %stack_var_-824.stack_var_-1032 to ptr
  %22 = load i32, ptr %storemerge, align 8
  call void @printIntLine(i32 %22)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_53efe, label %dec_label_pc_53ef9

dec_label_pc_53ef9:                               ; preds = %dec_label_pc_53ed9
  call void @__stack_chk_fail()
  br label %dec_label_pc_53efe

dec_label_pc_53efe:                               ; preds = %dec_label_pc_53ef9, %dec_label_pc_53ed9
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_9d049:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

