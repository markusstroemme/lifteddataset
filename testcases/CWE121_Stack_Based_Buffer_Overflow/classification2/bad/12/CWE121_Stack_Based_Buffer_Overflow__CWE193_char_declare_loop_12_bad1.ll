define void @anon0() local_unnamed_addr {
dec_label_pc_2fb81:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72.0.reg2mem = alloca ptr, align 8
  %dataBadBuffer_-64 = alloca [10 x i8], align 8
  %dataBadBuffer_-56 = alloca [10 x i8], align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-38 = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2fbbb, label %dec_label_pc_2fbaa

dec_label_pc_2fbaa:                               ; preds = %dec_label_pc_2fb81
  %3 = bitcast ptr %stack_var_-48 to ptr
  store i8 0, ptr %3, align 8
  store ptr %3, ptr %stack_var_-72.0.reg2mem, align 8
  br label %dec_label_pc_2fbca

dec_label_pc_2fbbb:                               ; preds = %dec_label_pc_2fb81
  %4 = bitcast ptr %stack_var_-38 to ptr
  store i8 0, ptr %4, align 8
  store ptr %4, ptr %stack_var_-72.0.reg2mem, align 8
  br label %dec_label_pc_2fbca

dec_label_pc_2fbca:                               ; preds = %dec_label_pc_2fbbb, %dec_label_pc_2fbaa
  %stack_var_-72.0.reload = load ptr, ptr %stack_var_-72.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = trunc i32 %6 to i8
  %8 = insertvalue [10 x i8] undef, i8 %7, 0
  store [10 x i8] %8, ptr %dataBadBuffer_-56, align 8
  store [10 x i8] [i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], ptr %dataBadBuffer_-64, align 8
  %9 = bitcast ptr %dataBadBuffer_-56 to ptr
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, 1
  %12 = bitcast ptr %dataBadBuffer_-64 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = icmp ult i64 %13, %11
  br i1 %14, label %dec_label_pc_2fbfc.lr.ph, label %dec_label_pc_2fc2a

dec_label_pc_2fbfc.lr.ph:                         ; preds = %dec_label_pc_2fbca
  %15 = ptrtoint ptr %stack_var_-72.0.reload to i64
  %16 = ptrtoint ptr %stack_var_-27 to i64
  store i64 %13, ptr %.reg2mem, align 8
  br label %dec_label_pc_2fbfc

dec_label_pc_2fbfc:                               ; preds = %dec_label_pc_2fbfc.lr.ph, %dec_label_pc_2fbfc
  %.reload = load i64, ptr %.reg2mem, align 8
  %17 = add i64 %.reload, %15
  %18 = add i64 %.reload, %16
  %19 = inttoptr i64 %18 to ptr
  %20 = load i8, ptr %19, align 1
  %21 = inttoptr i64 %17 to ptr
  store i8 %20, ptr %21, align 1
  %22 = load i64, ptr %12, align 8
  %23 = trunc i64 %22 to i8
  %24 = add i8 %23, 1
  %25 = insertvalue [10 x i8] undef, i8 %24, 0
  store [10 x i8] %25, ptr %dataBadBuffer_-64, align 8
  %26 = load i64, ptr %9, align 8
  %27 = add i64 %26, 1
  %28 = load i64, ptr %12, align 8
  %29 = icmp ult i64 %28, %27
  store i64 %28, ptr %.reg2mem, align 8
  br i1 %29, label %dec_label_pc_2fbfc, label %dec_label_pc_2fc2a

dec_label_pc_2fc2a:                               ; preds = %dec_label_pc_2fbfc, %dec_label_pc_2fbca
  call void @printLine(ptr %stack_var_-72.0.reload)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %0, %30
  br i1 %31, label %dec_label_pc_2fc4b, label %dec_label_pc_2fc46

dec_label_pc_2fc46:                               ; preds = %dec_label_pc_2fc2a
  call void @__stack_chk_fail()
  br label %dec_label_pc_2fc4b

dec_label_pc_2fc4b:                               ; preds = %dec_label_pc_2fc46, %dec_label_pc_2fc2a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4f4a1:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

