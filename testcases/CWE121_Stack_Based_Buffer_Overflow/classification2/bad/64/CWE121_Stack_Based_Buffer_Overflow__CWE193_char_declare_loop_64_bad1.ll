define void @anon0() local_unnamed_addr {
dec_label_pc_31ec7:
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store ptr %1, ptr %stack_var_-40, align 8
  store i8 0, ptr %1, align 8
  %2 = bitcast ptr %stack_var_-40 to ptr
  call void @anon1(ptr nonnull %2)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_31f12, label %dec_label_pc_31f0d

dec_label_pc_31f0d:                               ; preds = %dec_label_pc_31ec7
  call void @__stack_chk_fail()
  br label %dec_label_pc_31f12

dec_label_pc_31f12:                               ; preds = %dec_label_pc_31f0d, %dec_label_pc_31ec7
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_31f76:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %dec_label_pc_32008, label %dec_label_pc_31fda.lr.ph

dec_label_pc_31fda.lr.ph:                         ; preds = %dec_label_pc_31f76
  %6 = ptrtoint ptr %dataVoidPtr to i64
  %7 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_31fda

dec_label_pc_31fda:                               ; preds = %dec_label_pc_31fda, %dec_label_pc_31fda.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %8 = add i64 %.reload, %6
  %9 = add i64 %.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %13, %4
  store i64 %13, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_32008, label %dec_label_pc_31fda

dec_label_pc_32008:                               ; preds = %dec_label_pc_31fda, %dec_label_pc_31f76
  call void @printLine(ptr %dataVoidPtr)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_32029, label %dec_label_pc_32024

dec_label_pc_32024:                               ; preds = %dec_label_pc_32008
  call void @__stack_chk_fail()
  br label %dec_label_pc_32029

dec_label_pc_32029:                               ; preds = %dec_label_pc_32024, %dec_label_pc_32008
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

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

