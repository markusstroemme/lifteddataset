@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_53f00:
  %0 = alloca i64, align 8
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-832 = alloca [100 x i32], align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 50)
  store [100 x i32] [i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef], ptr %dataGoodBuffer_-832, align 8
  %5 = bitcast ptr %dataGoodBuffer_-832 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = icmp ult i64 %6, 100
  %8 = trunc i64 %1 to i32
  store i32 %8, ptr %.reg2mem3, align 4
  br i1 %7, label %dec_label_pc_53f6e.lr.ph, label %dec_label_pc_53fa9

dec_label_pc_53f6e.lr.ph:                         ; preds = %dec_label_pc_53f00
  %storemerge = bitcast ptr %stack_var_-824 to ptr
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %10 = ptrtoint ptr %stack_var_-824 to i64
  %11 = add i64 %9, -416
  store i64 %6, ptr %.reg2mem, align 8
  br label %dec_label_pc_53f6e

dec_label_pc_53f6e:                               ; preds = %dec_label_pc_53f6e.lr.ph, %dec_label_pc_53f6e
  %.reload = load i64, ptr %.reg2mem, align 8
  %12 = mul i64 %.reload, 4
  %13 = add i64 %12, %10
  %14 = add i64 %11, %12
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = inttoptr i64 %13 to ptr
  store i32 %16, ptr %17, align 4
  %18 = load i64, ptr %5, align 8
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, 1
  %21 = insertvalue [100 x i32] undef, i32 %20, 0
  store [100 x i32] %21, ptr %dataGoodBuffer_-832, align 8
  %22 = load i64, ptr %5, align 8
  %23 = icmp ult i64 %22, 100
  store i64 %22, ptr %.reg2mem, align 8
  br i1 %23, label %dec_label_pc_53f6e, label %dec_label_pc_53f9f.dec_label_pc_53fa9_crit_edge

dec_label_pc_53f9f.dec_label_pc_53fa9_crit_edge:  ; preds = %dec_label_pc_53f6e
  %.pre = load i32, ptr %storemerge, align 8
  store i32 %.pre, ptr %.reg2mem3, align 4
  br label %dec_label_pc_53fa9

dec_label_pc_53fa9:                               ; preds = %dec_label_pc_53f9f.dec_label_pc_53fa9_crit_edge, %dec_label_pc_53f00
  %.reload4 = load i32, ptr %.reg2mem3, align 4
  call void @printIntLine(i32 %.reload4)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %2, %24
  br i1 %25, label %dec_label_pc_53fce, label %dec_label_pc_53fc9

dec_label_pc_53fc9:                               ; preds = %dec_label_pc_53fa9
  call void @__stack_chk_fail()
  br label %dec_label_pc_53fce

dec_label_pc_53fce:                               ; preds = %dec_label_pc_53fc9, %dec_label_pc_53fa9
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

