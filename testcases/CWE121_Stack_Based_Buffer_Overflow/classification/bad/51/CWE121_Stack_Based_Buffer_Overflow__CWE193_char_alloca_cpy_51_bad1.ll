@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6c8c0:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6c909

dec_label_pc_6c909:                               ; preds = %dec_label_pc_6c909, %dec_label_pc_6c8c0
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6c920, label %dec_label_pc_6c909

dec_label_pc_6c920:                               ; preds = %dec_label_pc_6c909
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_6c98b

dec_label_pc_6c98b:                               ; preds = %dec_label_pc_6c98b, %dec_label_pc_6c920
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_6c9a2, label %dec_label_pc_6c98b

dec_label_pc_6c9a2:                               ; preds = %dec_label_pc_6c98b
  store i8 0, ptr %7, align 16
  call void @anon1(ptr %7)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_6ca0f, label %dec_label_pc_6ca0a

dec_label_pc_6ca0a:                               ; preds = %dec_label_pc_6c9a2
  call void @__stack_chk_fail()
  br label %dec_label_pc_6ca0f

dec_label_pc_6ca0f:                               ; preds = %dec_label_pc_6ca0a, %dec_label_pc_6c9a2
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_6cb77:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call ptr @strcpy(ptr %data, ptr nonnull %1)
  call void @printLine(ptr %data)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_6cbe2, label %dec_label_pc_6cbdd

dec_label_pc_6cbdd:                               ; preds = %dec_label_pc_6cb77
  call void @__stack_chk_fail()
  br label %dec_label_pc_6cbe2

dec_label_pc_6cbe2:                               ; preds = %dec_label_pc_6cbdd, %dec_label_pc_6cb77
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

