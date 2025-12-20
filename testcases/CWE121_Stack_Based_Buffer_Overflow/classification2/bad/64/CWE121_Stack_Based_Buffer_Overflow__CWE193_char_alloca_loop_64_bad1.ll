@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f263:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBadBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_f2ac

dec_label_pc_f2ac:                                ; preds = %dec_label_pc_f2ac, %dec_label_pc_f263
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_f2c3, label %dec_label_pc_f2ac

dec_label_pc_f2c3:                                ; preds = %dec_label_pc_f2ac
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_f32e

dec_label_pc_f32e:                                ; preds = %dec_label_pc_f32e, %dec_label_pc_f2c3
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_f345, label %dec_label_pc_f32e

dec_label_pc_f345:                                ; preds = %dec_label_pc_f32e
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %dataBadBuffer_-40 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  %11 = bitcast ptr %dataBadBuffer_-40 to ptr
  call void @anon1(ptr nonnull %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %dec_label_pc_f3b2, label %dec_label_pc_f3ad

dec_label_pc_f3ad:                                ; preds = %dec_label_pc_f345
  call void @__stack_chk_fail()
  br label %dec_label_pc_f3b2

dec_label_pc_f3b2:                                ; preds = %dec_label_pc_f3ad, %dec_label_pc_f345
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_f51a:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %dec_label_pc_f5ac, label %dec_label_pc_f57e.lr.ph

dec_label_pc_f57e.lr.ph:                          ; preds = %dec_label_pc_f51a
  %6 = ptrtoint ptr %dataVoidPtr to i64
  %7 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_f57e

dec_label_pc_f57e:                                ; preds = %dec_label_pc_f57e, %dec_label_pc_f57e.lr.ph
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
  br i1 %exitcond, label %dec_label_pc_f5ac, label %dec_label_pc_f57e

dec_label_pc_f5ac:                                ; preds = %dec_label_pc_f57e, %dec_label_pc_f51a
  call void @printLine(ptr %dataVoidPtr)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_f5cd, label %dec_label_pc_f5c8

dec_label_pc_f5c8:                                ; preds = %dec_label_pc_f5ac
  call void @__stack_chk_fail()
  br label %dec_label_pc_f5cd

dec_label_pc_f5cd:                                ; preds = %dec_label_pc_f5c8, %dec_label_pc_f5ac
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

