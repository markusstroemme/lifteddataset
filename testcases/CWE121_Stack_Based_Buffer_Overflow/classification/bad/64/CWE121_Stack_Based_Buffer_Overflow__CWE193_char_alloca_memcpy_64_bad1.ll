@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_180a8:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBadBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_180f1

dec_label_pc_180f1:                               ; preds = %dec_label_pc_180f1, %dec_label_pc_180a8
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_18108, label %dec_label_pc_180f1

dec_label_pc_18108:                               ; preds = %dec_label_pc_180f1
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_18173

dec_label_pc_18173:                               ; preds = %dec_label_pc_18173, %dec_label_pc_18108
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_1818a, label %dec_label_pc_18173

dec_label_pc_1818a:                               ; preds = %dec_label_pc_18173
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %dataBadBuffer_-40 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  %11 = bitcast ptr %dataBadBuffer_-40 to ptr
  call void @anon1(ptr nonnull %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %dec_label_pc_181f7, label %dec_label_pc_181f2

dec_label_pc_181f2:                               ; preds = %dec_label_pc_1818a
  call void @__stack_chk_fail()
  br label %dec_label_pc_181f7

dec_label_pc_181f7:                               ; preds = %dec_label_pc_181f2, %dec_label_pc_1818a
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_1835f:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = bitcast ptr %dataVoidPtr to ptr
  %5 = call ptr @memcpy(ptr %4, ptr nonnull %stack_var_-27, i32 %3)
  call void @printLine(ptr %dataVoidPtr)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_183ed, label %dec_label_pc_183e8

dec_label_pc_183e8:                               ; preds = %dec_label_pc_1835f
  call void @__stack_chk_fail()
  br label %dec_label_pc_183ed

dec_label_pc_183ed:                               ; preds = %dec_label_pc_183e8, %dec_label_pc_1835f
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

