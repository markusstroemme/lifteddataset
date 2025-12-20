@global_var_b7689 = external constant [21 x i8]
@global_var_bb9b5 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2bb58:
  %.reg2mem = alloca i64, align 8
  %stack_var_-1640.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-1632 = alloca [100 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1624 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2bb95, label %dec_label_pc_2bb84

dec_label_pc_2bb84:                               ; preds = %dec_label_pc_2bb58
  call void @printLine(ptr @global_var_b7689)
  br label %dec_label_pc_2bba3

dec_label_pc_2bb95:                               ; preds = %dec_label_pc_2bb58
  %3 = ptrtoint ptr %stack_var_-1624 to i64
  store i64 %3, ptr %stack_var_-1640.0.reg2mem, align 8
  br label %dec_label_pc_2bba3

dec_label_pc_2bba3:                               ; preds = %dec_label_pc_2bb95, %dec_label_pc_2bb84
  %stack_var_-1640.0.reload = load i64, ptr %stack_var_-1640.0.reg2mem, align 8
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  store [100 x i64] [i64 0, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef], ptr %dataGoodBuffer_-1632, align 8
  %5 = getelementptr inbounds [100 x i64], ptr %dataGoodBuffer_-1632, i64 0, i64 0
  %6 = load i64, ptr %5, align 8
  %7 = icmp ult i64 %6, 100
  br i1 %7, label %dec_label_pc_2bbc7.lr.ph, label %dec_label_pc_2bc04

dec_label_pc_2bbc7.lr.ph:                         ; preds = %dec_label_pc_2bba3
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %9 = add i64 %8, -816
  store i64 %6, ptr %.reg2mem, align 8
  br label %dec_label_pc_2bbc7

dec_label_pc_2bbc7:                               ; preds = %dec_label_pc_2bbc7.lr.ph, %dec_label_pc_2bbc7
  %.reload = load i64, ptr %.reg2mem, align 8
  %10 = mul i64 %.reload, 8
  %11 = add i64 %10, %stack_var_-1640.0.reload
  %12 = add i64 %9, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i64, ptr %13, align 8
  %15 = inttoptr i64 %11 to ptr
  store i64 %14, ptr %15, align 8
  %16 = load i64, ptr %5, align 8
  %17 = add i64 %16, 1
  %18 = insertvalue [100 x i64] undef, i64 %17, 0
  store [100 x i64] %18, ptr %dataGoodBuffer_-1632, align 8
  %19 = load i64, ptr %5, align 8
  %20 = icmp ult i64 %19, 100
  store i64 %19, ptr %.reg2mem, align 8
  br i1 %20, label %dec_label_pc_2bbc7, label %dec_label_pc_2bc04

dec_label_pc_2bc04:                               ; preds = %dec_label_pc_2bbc7, %dec_label_pc_2bba3
  %21 = inttoptr i64 %stack_var_-1640.0.reload to ptr
  %22 = load i64, ptr %21, align 8
  call void @printLongLongLine(i64 %22)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_2bc2b, label %dec_label_pc_2bc26

dec_label_pc_2bc26:                               ; preds = %dec_label_pc_2bc04
  call void @__stack_chk_fail()
  br label %dec_label_pc_2bc2b

dec_label_pc_2bc2b:                               ; preds = %dec_label_pc_2bc26, %dec_label_pc_2bc04
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9cb1b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9cb3e, label %dec_label_pc_9cb32

dec_label_pc_9cb32:                               ; preds = %dec_label_pc_9cb1b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9cb3e

dec_label_pc_9cb3e:                               ; preds = %dec_label_pc_9cb32, %dec_label_pc_9cb1b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_9d03a:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

