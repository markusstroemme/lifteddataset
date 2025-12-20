@global_var_1000 = external global ptr
@global_var_8149d = external constant [3 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3f2a7:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBadBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3f2f0

dec_label_pc_3f2f0:                               ; preds = %dec_label_pc_3f2f0, %dec_label_pc_3f2a7
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3f307, label %dec_label_pc_3f2f0

dec_label_pc_3f307:                               ; preds = %dec_label_pc_3f2f0
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3f372

dec_label_pc_3f372:                               ; preds = %dec_label_pc_3f372, %dec_label_pc_3f307
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3f389, label %dec_label_pc_3f372

dec_label_pc_3f389:                               ; preds = %dec_label_pc_3f372
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %dataBadBuffer_-40 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  call void @anon1(ptr nonnull %dataBadBuffer_-40)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_3f3f6, label %dec_label_pc_3f3f1

dec_label_pc_3f3f1:                               ; preds = %dec_label_pc_3f389
  call void @__stack_chk_fail()
  br label %dec_label_pc_3f3f6

dec_label_pc_3f3f6:                               ; preds = %dec_label_pc_3f3f1, %dec_label_pc_3f389
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_3f55e:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %dataPtr to ptr
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %2, i32 100, ptr @global_var_8149d, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_3f5f0, label %dec_label_pc_3f5eb

dec_label_pc_3f5eb:                               ; preds = %dec_label_pc_3f55e
  call void @__stack_chk_fail()
  br label %dec_label_pc_3f5f0

dec_label_pc_3f5f0:                               ; preds = %dec_label_pc_3f5eb, %dec_label_pc_3f55e
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

