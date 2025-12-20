@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_fa97:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %dataBadBuffer_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_fae0

dec_label_pc_fae0:                                ; preds = %dec_label_pc_fae0, %dec_label_pc_fa97
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_faf7, label %dec_label_pc_fae0

dec_label_pc_faf7:                                ; preds = %dec_label_pc_fae0
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_fb62

dec_label_pc_fb62:                                ; preds = %dec_label_pc_fb62, %dec_label_pc_faf7
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_fb79, label %dec_label_pc_fb62

dec_label_pc_fb79:                                ; preds = %dec_label_pc_fb62
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  %10 = insertvalue [5 x ptr] undef, ptr %9, 0
  store [5 x ptr] %10, ptr %dataArray_-64, align 8
  %11 = bitcast ptr %dataArray_-64 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  %14 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_fbee, label %dec_label_pc_fbe9

dec_label_pc_fbe9:                                ; preds = %dec_label_pc_fb79
  call void @__stack_chk_fail()
  br label %dec_label_pc_fbee

dec_label_pc_fbee:                                ; preds = %dec_label_pc_fbe9, %dec_label_pc_fb79
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_fd5e:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %dec_label_pc_fde9, label %dec_label_pc_fdbb.lr.ph

dec_label_pc_fdbb.lr.ph:                          ; preds = %dec_label_pc_fd5e
  %10 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_fdbb

dec_label_pc_fdbb:                                ; preds = %dec_label_pc_fdbb, %dec_label_pc_fdbb.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %11 = add i64 %.reload, %4
  %12 = add i64 %.reload, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = inttoptr i64 %11 to ptr
  store i8 %14, ptr %15, align 1
  %16 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %16, %8
  store i64 %16, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_fde9, label %dec_label_pc_fdbb

dec_label_pc_fde9:                                ; preds = %dec_label_pc_fdbb, %dec_label_pc_fd5e
  %17 = inttoptr i64 %4 to ptr
  call void @printLine(ptr %17)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_fe0a, label %dec_label_pc_fe05

dec_label_pc_fe05:                                ; preds = %dec_label_pc_fde9
  call void @__stack_chk_fail()
  br label %dec_label_pc_fe0a

dec_label_pc_fe0a:                                ; preds = %dec_label_pc_fe05, %dec_label_pc_fde9
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

