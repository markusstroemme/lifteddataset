define void @anon0() local_unnamed_addr {
dec_label_pc_377b4:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-38 = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %dataBadBuffer_-56 = alloca [10 x i8], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_377ee, label %dec_label_pc_377dd

dec_label_pc_377dd:                               ; preds = %dec_label_pc_377b4
  %3 = ptrtoint ptr %stack_var_-48 to i64
  %4 = trunc i64 %3 to i8
  %5 = insertvalue [10 x i8] undef, i8 %4, 0
  store [10 x i8] %5, ptr %dataBadBuffer_-56, align 8
  %6 = bitcast ptr %dataBadBuffer_-56 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %6, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_377fd

dec_label_pc_377ee:                               ; preds = %dec_label_pc_377b4
  %9 = ptrtoint ptr %stack_var_-38 to i64
  %10 = trunc i64 %9 to i8
  %11 = insertvalue [10 x i8] undef, i8 %10, 0
  store [10 x i8] %11, ptr %dataBadBuffer_-56, align 8
  %12 = bitcast ptr %dataBadBuffer_-56 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  store ptr %12, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_377fd

dec_label_pc_377fd:                               ; preds = %dec_label_pc_377ee, %dec_label_pc_377dd
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %15 = bitcast ptr %stack_var_-27 to ptr
  %16 = call i32 @strlen(ptr nonnull %15)
  %17 = add i32 %16, 1
  %18 = load i64, ptr %.pre-phi.reload, align 8
  %19 = inttoptr i64 %18 to ptr
  %20 = call ptr @memmove(ptr %19, ptr nonnull %stack_var_-27, i32 %17)
  %21 = inttoptr i64 %18 to ptr
  call void @printLine(ptr %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_37859, label %dec_label_pc_37854

dec_label_pc_37854:                               ; preds = %dec_label_pc_377fd
  call void @__stack_chk_fail()
  br label %dec_label_pc_37859

dec_label_pc_37859:                               ; preds = %dec_label_pc_37854, %dec_label_pc_377fd
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

