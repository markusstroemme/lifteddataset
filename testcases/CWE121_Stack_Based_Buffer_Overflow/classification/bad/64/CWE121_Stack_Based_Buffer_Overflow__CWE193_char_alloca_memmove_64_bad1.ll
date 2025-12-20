@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_20d7b:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBadBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_20dc4

dec_label_pc_20dc4:                               ; preds = %dec_label_pc_20dc4, %dec_label_pc_20d7b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_20ddb, label %dec_label_pc_20dc4

dec_label_pc_20ddb:                               ; preds = %dec_label_pc_20dc4
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_20e46

dec_label_pc_20e46:                               ; preds = %dec_label_pc_20e46, %dec_label_pc_20ddb
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_20e5d, label %dec_label_pc_20e46

dec_label_pc_20e5d:                               ; preds = %dec_label_pc_20e46
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %dataBadBuffer_-40 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  %11 = bitcast ptr %dataBadBuffer_-40 to ptr
  call void @anon1(ptr nonnull %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %dec_label_pc_20eca, label %dec_label_pc_20ec5

dec_label_pc_20ec5:                               ; preds = %dec_label_pc_20e5d
  call void @__stack_chk_fail()
  br label %dec_label_pc_20eca

dec_label_pc_20eca:                               ; preds = %dec_label_pc_20ec5, %dec_label_pc_20e5d
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_21032:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = bitcast ptr %dataVoidPtr to ptr
  %5 = call ptr @memmove(ptr %4, ptr nonnull %stack_var_-27, i32 %3)
  call void @printLine(ptr %dataVoidPtr)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_210c0, label %dec_label_pc_210bb

dec_label_pc_210bb:                               ; preds = %dec_label_pc_21032
  call void @__stack_chk_fail()
  br label %dec_label_pc_210c0

dec_label_pc_210c0:                               ; preds = %dec_label_pc_210bb, %dec_label_pc_21032
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

