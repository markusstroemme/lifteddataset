@CWE121_Stack_Based_Buffer_Overflow__CWE193_char_declare_loop_45_badData = external local_unnamed_addr global i64

define void @anon1() local_unnamed_addr {
dec_label_pc_3116b:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_declare_loop_45_badData, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %dec_label_pc_311f1, label %dec_label_pc_311c3.lr.ph

dec_label_pc_311c3.lr.ph:                         ; preds = %dec_label_pc_3116b
  %7 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_311c3

dec_label_pc_311c3:                               ; preds = %dec_label_pc_311c3, %dec_label_pc_311c3.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %8 = add i64 %.reload, %1
  %9 = add i64 %.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %13, %5
  store i64 %13, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_311f1, label %dec_label_pc_311c3

dec_label_pc_311f1:                               ; preds = %dec_label_pc_311c3, %dec_label_pc_3116b
  %14 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_31212, label %dec_label_pc_3120d

dec_label_pc_3120d:                               ; preds = %dec_label_pc_311f1
  call void @__stack_chk_fail()
  br label %dec_label_pc_31212

dec_label_pc_31212:                               ; preds = %dec_label_pc_3120d, %dec_label_pc_311f1
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_31214:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store i8 0, ptr %1, align 8
  %2 = ptrtoint ptr %stack_var_-27 to i64
  store i64 %2, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_declare_loop_45_badData, align 8
  call void @anon1()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_31268, label %dec_label_pc_31263

dec_label_pc_31263:                               ; preds = %dec_label_pc_31214
  call void @__stack_chk_fail()
  br label %dec_label_pc_31268

dec_label_pc_31268:                               ; preds = %dec_label_pc_31263, %dec_label_pc_31214
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

