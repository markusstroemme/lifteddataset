@global_var_1000 = external global ptr
@global_var_814a6 = external constant [3 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3fe44:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %dataBadBuffer_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3fe8d

dec_label_pc_3fe8d:                               ; preds = %dec_label_pc_3fe8d, %dec_label_pc_3fe44
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3fea4, label %dec_label_pc_3fe8d

dec_label_pc_3fea4:                               ; preds = %dec_label_pc_3fe8d
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3ff0f

dec_label_pc_3ff0f:                               ; preds = %dec_label_pc_3ff0f, %dec_label_pc_3fea4
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3ff26, label %dec_label_pc_3ff0f

dec_label_pc_3ff26:                               ; preds = %dec_label_pc_3ff0f
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
  br i1 %16, label %dec_label_pc_3ff9b, label %dec_label_pc_3ff96

dec_label_pc_3ff96:                               ; preds = %dec_label_pc_3ff26
  call void @__stack_chk_fail()
  br label %dec_label_pc_3ff9b

dec_label_pc_3ff9b:                               ; preds = %dec_label_pc_3ff96, %dec_label_pc_3ff26
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_4010b:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = inttoptr i64 %4 to ptr
  %7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %6, i32 100, ptr @global_var_814a6, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %6)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_4019e, label %dec_label_pc_40199

dec_label_pc_40199:                               ; preds = %dec_label_pc_4010b
  call void @__stack_chk_fail()
  br label %dec_label_pc_4019e

dec_label_pc_4019e:                               ; preds = %dec_label_pc_40199, %dec_label_pc_4010b
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

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

