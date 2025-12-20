@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6d878:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBadBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6d8c1

dec_label_pc_6d8c1:                               ; preds = %dec_label_pc_6d8c1, %dec_label_pc_6d878
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6d8d8, label %dec_label_pc_6d8c1

dec_label_pc_6d8d8:                               ; preds = %dec_label_pc_6d8c1
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_6d943

dec_label_pc_6d943:                               ; preds = %dec_label_pc_6d943, %dec_label_pc_6d8d8
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_6d95a, label %dec_label_pc_6d943

dec_label_pc_6d95a:                               ; preds = %dec_label_pc_6d943
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %dataBadBuffer_-40 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  call void @anon1(ptr nonnull %dataBadBuffer_-40)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_6d9c7, label %dec_label_pc_6d9c2

dec_label_pc_6d9c2:                               ; preds = %dec_label_pc_6d95a
  call void @__stack_chk_fail()
  br label %dec_label_pc_6d9c7

dec_label_pc_6d9c7:                               ; preds = %dec_label_pc_6d9c2, %dec_label_pc_6d95a
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_6db2f:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %dataPtr to ptr
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call ptr @strcpy(ptr %1, ptr nonnull %2)
  call void @printLine(ptr %1)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_6dba5, label %dec_label_pc_6dba0

dec_label_pc_6dba0:                               ; preds = %dec_label_pc_6db2f
  call void @__stack_chk_fail()
  br label %dec_label_pc_6dba5

dec_label_pc_6dba5:                               ; preds = %dec_label_pc_6dba0, %dec_label_pc_6db2f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

