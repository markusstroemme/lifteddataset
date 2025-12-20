@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_feba:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %myStruct_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %myStruct_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_ff03

dec_label_pc_ff03:                                ; preds = %dec_label_pc_ff03, %dec_label_pc_feba
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_ff1a, label %dec_label_pc_ff03

dec_label_pc_ff1a:                                ; preds = %dec_label_pc_ff03
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_ff85

dec_label_pc_ff85:                                ; preds = %dec_label_pc_ff85, %dec_label_pc_ff1a
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_ff9c, label %dec_label_pc_ff85

dec_label_pc_ff9c:                                ; preds = %dec_label_pc_ff85
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  call void @anon1(i64 %8)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_10011, label %dec_label_pc_1000c

dec_label_pc_1000c:                               ; preds = %dec_label_pc_ff9c
  call void @__stack_chk_fail()
  br label %dec_label_pc_10011

dec_label_pc_10011:                               ; preds = %dec_label_pc_1000c, %dec_label_pc_ff9c
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_10181:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %dec_label_pc_10208, label %dec_label_pc_101da.lr.ph

dec_label_pc_101da.lr.ph:                         ; preds = %dec_label_pc_10181
  %6 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_101da

dec_label_pc_101da:                               ; preds = %dec_label_pc_101da, %dec_label_pc_101da.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %7 = add i64 %.reload, %myStruct
  %8 = add i64 %.reload, %6
  %9 = inttoptr i64 %8 to ptr
  %10 = load i8, ptr %9, align 1
  %11 = inttoptr i64 %7 to ptr
  store i8 %10, ptr %11, align 1
  %12 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %12, %4
  store i64 %12, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_10208, label %dec_label_pc_101da

dec_label_pc_10208:                               ; preds = %dec_label_pc_101da, %dec_label_pc_10181
  %13 = inttoptr i64 %myStruct to ptr
  call void @printLine(ptr %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_10229, label %dec_label_pc_10224

dec_label_pc_10224:                               ; preds = %dec_label_pc_10208
  call void @__stack_chk_fail()
  br label %dec_label_pc_10229

dec_label_pc_10229:                               ; preds = %dec_label_pc_10224, %dec_label_pc_10208
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

