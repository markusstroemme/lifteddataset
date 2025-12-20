@global_var_1000 = external global ptr
@global_var_fff = external global i32
@global_var_ef064 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6814d:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_68196

dec_label_pc_68196:                               ; preds = %dec_label_pc_68196, %dec_label_pc_6814d
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_681ad, label %dec_label_pc_68196

dec_label_pc_681ad:                               ; preds = %dec_label_pc_68196
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_68218

dec_label_pc_68218:                               ; preds = %dec_label_pc_68218, %dec_label_pc_681ad
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_6822f, label %dec_label_pc_68218

dec_label_pc_6822f:                               ; preds = %dec_label_pc_68218
  %9 = load i32, ptr @global_var_ef064, align 4
  %10 = icmp eq i32 %9, 5
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_68286, label %dec_label_pc_68277

dec_label_pc_68277:                               ; preds = %dec_label_pc_6822f
  %12 = inttoptr i64 %6 to ptr
  %13 = bitcast ptr %dataBadBuffer_-56 to ptr
  store i64 %6, ptr %13, align 8
  store i8 0, ptr %12, align 16
  br label %dec_label_pc_68286

dec_label_pc_68286:                               ; preds = %dec_label_pc_68277, %dec_label_pc_6822f
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %14 = load ptr, ptr %dataBadBuffer_-56, align 8
  %15 = bitcast ptr %stack_var_-27 to ptr
  %16 = call ptr @strcpy(ptr %14, ptr nonnull %15)
  %17 = load ptr, ptr %dataBadBuffer_-56, align 8
  call void @printLine(ptr %17)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_682d2, label %dec_label_pc_682cd

dec_label_pc_682cd:                               ; preds = %dec_label_pc_68286
  call void @__stack_chk_fail()
  br label %dec_label_pc_682d2

dec_label_pc_682d2:                               ; preds = %dec_label_pc_682cd, %dec_label_pc_68286
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

