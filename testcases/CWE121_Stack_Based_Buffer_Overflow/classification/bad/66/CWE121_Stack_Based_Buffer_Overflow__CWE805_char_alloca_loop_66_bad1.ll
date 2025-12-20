@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_10bf4:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %dataBadBuffer_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_10c3d

dec_label_pc_10c3d:                               ; preds = %dec_label_pc_10c3d, %dec_label_pc_10bf4
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_10c54, label %dec_label_pc_10c3d

dec_label_pc_10c54:                               ; preds = %dec_label_pc_10c3d
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_10cbf

dec_label_pc_10cbf:                               ; preds = %dec_label_pc_10cbf, %dec_label_pc_10c54
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_10cd6, label %dec_label_pc_10cbf

dec_label_pc_10cd6:                               ; preds = %dec_label_pc_10cbf
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
  br i1 %16, label %dec_label_pc_10d4b, label %dec_label_pc_10d46

dec_label_pc_10d46:                               ; preds = %dec_label_pc_10cd6
  call void @__stack_chk_fail()
  br label %dec_label_pc_10d4b

dec_label_pc_10d4b:                               ; preds = %dec_label_pc_10d46, %dec_label_pc_10cd6
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_10ebb:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_10f13

dec_label_pc_10f13:                               ; preds = %dec_label_pc_10ebb, %dec_label_pc_10f13
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge2.reload to i64
  %8 = add i64 %4, %7
  %9 = add i64 %7, %6
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add i64 %7, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge2.reg2mem, align 8
  br i1 %15, label %dec_label_pc_10f3a, label %dec_label_pc_10f13

dec_label_pc_10f3a:                               ; preds = %dec_label_pc_10f13
  %16 = inttoptr i64 %4 to ptr
  %17 = add i64 %4, 99
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  call void @printLine(ptr %16)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_10f66, label %dec_label_pc_10f61

dec_label_pc_10f61:                               ; preds = %dec_label_pc_10f3a
  call void @__stack_chk_fail()
  br label %dec_label_pc_10f66

dec_label_pc_10f66:                               ; preds = %dec_label_pc_10f61, %dec_label_pc_10f3a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

