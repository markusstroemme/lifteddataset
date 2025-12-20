@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_277b7:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_27800

dec_label_pc_27800:                               ; preds = %dec_label_pc_27800, %dec_label_pc_277b7
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_27817, label %dec_label_pc_27800

dec_label_pc_27817:                               ; preds = %dec_label_pc_27800
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_27882

dec_label_pc_27882:                               ; preds = %dec_label_pc_27882, %dec_label_pc_27817
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_27899, label %dec_label_pc_27882

dec_label_pc_27899:                               ; preds = %dec_label_pc_27882
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  store ptr %9, ptr %dataBadBuffer_-72, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %10 = bitcast ptr %stack_var_-27 to ptr
  %11 = call i32 @strlen(ptr nonnull %10)
  %12 = add i32 %11, 1
  %13 = call ptr @strncpy(ptr %9, ptr nonnull %10, i32 %12)
  call void @printLine(ptr %9)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_27951, label %dec_label_pc_2794c

dec_label_pc_2794c:                               ; preds = %dec_label_pc_27899
  call void @__stack_chk_fail()
  br label %dec_label_pc_27951

dec_label_pc_27951:                               ; preds = %dec_label_pc_2794c, %dec_label_pc_27899
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

