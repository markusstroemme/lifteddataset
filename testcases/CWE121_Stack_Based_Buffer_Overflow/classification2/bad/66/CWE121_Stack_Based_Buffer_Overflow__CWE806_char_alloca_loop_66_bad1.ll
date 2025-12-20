@global_var_fff = external global ptr
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_11381:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %data_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_113ca

dec_label_pc_113ca:                               ; preds = %dec_label_pc_113ca, %dec_label_pc_11381
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_113e1, label %dec_label_pc_113ca

dec_label_pc_113e1:                               ; preds = %dec_label_pc_113ca
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %data_-72, align 8
  %7 = insertvalue [5 x ptr] undef, ptr %6, 0
  store [5 x ptr] %7, ptr %dataArray_-64, align 8
  %8 = bitcast ptr %dataArray_-64 to ptr
  %9 = load i64, ptr %8, align 8
  %10 = inttoptr i64 %9 to ptr
  %11 = call ptr @memset(ptr %10, i32 65, i32 99)
  %12 = add i64 %9, 99
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  %14 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_11470, label %dec_label_pc_1146b

dec_label_pc_1146b:                               ; preds = %dec_label_pc_113e1
  call void @__stack_chk_fail()
  br label %dec_label_pc_11470

dec_label_pc_11470:                               ; preds = %dec_label_pc_1146b, %dec_label_pc_113e1
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_11578:
  %.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %stack_var_-72 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = inttoptr i64 %4 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %6 = call i32 @strlen(ptr %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %dec_label_pc_1161d, label %dec_label_pc_115f3.lr.ph

dec_label_pc_115f3.lr.ph:                         ; preds = %dec_label_pc_11578
  %8 = sext i32 %6 to i64
  %9 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_115f3

dec_label_pc_115f3:                               ; preds = %dec_label_pc_115f3.lr.ph, %dec_label_pc_115f3
  %.reload = load i64, ptr %.reg2mem, align 8
  %10 = add i64 %.reload, %4
  %11 = inttoptr i64 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = add i64 %.reload, %9
  %14 = inttoptr i64 %13 to ptr
  store i8 %12, ptr %14, align 1
  %15 = add nuw i64 %.reload, 1
  %16 = icmp ult i64 %15, %8
  store i64 %15, ptr %.reg2mem, align 8
  br i1 %16, label %dec_label_pc_115f3, label %dec_label_pc_1161d

dec_label_pc_1161d:                               ; preds = %dec_label_pc_115f3, %dec_label_pc_11578
  call void @printLine(ptr %5)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_11642, label %dec_label_pc_1163d

dec_label_pc_1163d:                               ; preds = %dec_label_pc_1161d
  call void @__stack_chk_fail()
  br label %dec_label_pc_11642

dec_label_pc_11642:                               ; preds = %dec_label_pc_1163d, %dec_label_pc_1161d
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

