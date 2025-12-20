@global_var_1000 = external global ptr
@global_var_fff = external global i32

define i32 @staticReturnsTrue.1099() local_unnamed_addr {
dec_label_pc_68612:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_68630:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_68679

dec_label_pc_68679:                               ; preds = %dec_label_pc_68679, %dec_label_pc_68630
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_68690, label %dec_label_pc_68679

dec_label_pc_68690:                               ; preds = %dec_label_pc_68679
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_686fb

dec_label_pc_686fb:                               ; preds = %dec_label_pc_686fb, %dec_label_pc_68690
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_68712, label %dec_label_pc_686fb

dec_label_pc_68712:                               ; preds = %dec_label_pc_686fb
  %9 = call i32 @staticReturnsTrue.1099()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_6876c, label %dec_label_pc_6875d

dec_label_pc_6875d:                               ; preds = %dec_label_pc_68712
  %11 = inttoptr i64 %6 to ptr
  %12 = bitcast ptr %dataBadBuffer_-56 to ptr
  store i64 %6, ptr %12, align 8
  store i8 0, ptr %11, align 16
  br label %dec_label_pc_6876c

dec_label_pc_6876c:                               ; preds = %dec_label_pc_6875d, %dec_label_pc_68712
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %13 = load ptr, ptr %dataBadBuffer_-56, align 8
  %14 = bitcast ptr %stack_var_-27 to ptr
  %15 = call ptr @strcpy(ptr %13, ptr nonnull %14)
  %16 = load ptr, ptr %dataBadBuffer_-56, align 8
  call void @printLine(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_687b8, label %dec_label_pc_687b3

dec_label_pc_687b3:                               ; preds = %dec_label_pc_6876c
  call void @__stack_chk_fail()
  br label %dec_label_pc_687b8

dec_label_pc_687b8:                               ; preds = %dec_label_pc_687b3, %dec_label_pc_6876c
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

