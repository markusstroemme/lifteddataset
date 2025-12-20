@global_var_1000 = external global i32
@global_var_fff = external global i32

define i32 @staticReturnsTrue.124() local_unnamed_addr {
dec_label_pc_11f0d:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_11f2b:
  %dataGoodBuffer_-144.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %data_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_11f77

dec_label_pc_11f77:                               ; preds = %dec_label_pc_11f77, %dec_label_pc_11f2b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_11f8e, label %dec_label_pc_11f77

dec_label_pc_11f8e:                               ; preds = %dec_label_pc_11f77
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_11ff9

dec_label_pc_11ff9:                               ; preds = %dec_label_pc_11ff9, %dec_label_pc_11f8e
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_12010, label %dec_label_pc_11ff9

dec_label_pc_12010:                               ; preds = %dec_label_pc_11ff9
  %8 = call i32 @staticReturnsTrue.124()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_12070, label %dec_label_pc_1205b

dec_label_pc_1205b:                               ; preds = %dec_label_pc_12010
  %10 = and i64 %5, -16
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 16
  store ptr %11, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_12070

dec_label_pc_12070:                               ; preds = %dec_label_pc_1205b, %dec_label_pc_12010
  %dataGoodBuffer_-144.0.reload = load ptr, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  %12 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %13 = bitcast ptr %stack_var_-120 to ptr
  %14 = call ptr @strcpy(ptr %dataGoodBuffer_-144.0.reload, ptr nonnull %13)
  call void @printLine(ptr %dataGoodBuffer_-144.0.reload)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_120c4, label %dec_label_pc_120bf

dec_label_pc_120bf:                               ; preds = %dec_label_pc_12070
  call void @__stack_chk_fail()
  br label %dec_label_pc_120c4

dec_label_pc_120c4:                               ; preds = %dec_label_pc_120bf, %dec_label_pc_12070
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

