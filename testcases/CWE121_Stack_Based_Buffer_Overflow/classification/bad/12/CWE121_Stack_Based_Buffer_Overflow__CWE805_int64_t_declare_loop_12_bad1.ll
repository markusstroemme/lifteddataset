@global_var_bb9b5 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2bd10:
  %.reg2mem = alloca i64, align 8
  %dataBadBuffer_-2032 = alloca [50 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1624 = alloca i64, align 8
  %stack_var_-2024 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %stack_var_-1624.stack_var_-2024 = select i1 %2, ptr %stack_var_-1624, ptr %stack_var_-2024
  %3 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 100)
  store [50 x i64] [i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef], ptr %dataBadBuffer_-2032, align 8
  %4 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-2032, i64 0, i64 0
  %5 = load i64, ptr %4, align 8
  %6 = icmp ult i64 %5, 100
  br i1 %6, label %dec_label_pc_2bd7e.lr.ph, label %dec_label_pc_2bdbb

dec_label_pc_2bd7e.lr.ph:                         ; preds = %dec_label_pc_2bd10
  %storemerge1 = ptrtoint ptr %stack_var_-1624.stack_var_-2024 to i64
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %8 = add i64 %7, -816
  store i64 %5, ptr %.reg2mem, align 8
  br label %dec_label_pc_2bd7e

dec_label_pc_2bd7e:                               ; preds = %dec_label_pc_2bd7e.lr.ph, %dec_label_pc_2bd7e
  %.reload = load i64, ptr %.reg2mem, align 8
  %9 = mul i64 %.reload, 8
  %10 = add i64 %9, %storemerge1
  %11 = add i64 %8, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %10 to ptr
  store i64 %13, ptr %14, align 8
  %15 = load i64, ptr %4, align 8
  %16 = add i64 %15, 1
  %17 = insertvalue [50 x i64] undef, i64 %16, 0
  store [50 x i64] %17, ptr %dataBadBuffer_-2032, align 8
  %18 = load i64, ptr %4, align 8
  %19 = icmp ult i64 %18, 100
  store i64 %18, ptr %.reg2mem, align 8
  br i1 %19, label %dec_label_pc_2bd7e, label %dec_label_pc_2bdbb

dec_label_pc_2bdbb:                               ; preds = %dec_label_pc_2bd7e, %dec_label_pc_2bd10
  %20 = load i64, ptr %stack_var_-1624.stack_var_-2024, align 8
  call void @printLongLongLine(i64 %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_2bde2, label %dec_label_pc_2bddd

dec_label_pc_2bddd:                               ; preds = %dec_label_pc_2bdbb
  call void @__stack_chk_fail()
  br label %dec_label_pc_2bde2

dec_label_pc_2bde2:                               ; preds = %dec_label_pc_2bddd, %dec_label_pc_2bdbb
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
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

