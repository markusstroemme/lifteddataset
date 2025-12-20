@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2527e:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %myStruct_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %myStruct_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_252c7

dec_label_pc_252c7:                               ; preds = %dec_label_pc_252c7, %dec_label_pc_2527e
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_252de, label %dec_label_pc_252c7

dec_label_pc_252de:                               ; preds = %dec_label_pc_252c7
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_25349

dec_label_pc_25349:                               ; preds = %dec_label_pc_25349, %dec_label_pc_252de
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_25360, label %dec_label_pc_25349

dec_label_pc_25360:                               ; preds = %dec_label_pc_25349
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  call void @anon1(i64 %8)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_253d5, label %dec_label_pc_253d0

dec_label_pc_253d0:                               ; preds = %dec_label_pc_25360
  call void @__stack_chk_fail()
  br label %dec_label_pc_253d5

dec_label_pc_253d5:                               ; preds = %dec_label_pc_253d0, %dec_label_pc_25360
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_25545:
  %stack_var_-120 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %myStruct to ptr
  %4 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-120, i32 100)
  %5 = add i64 %myStruct, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  call void @printLine(ptr %0)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_255d3, label %dec_label_pc_255ce

dec_label_pc_255ce:                               ; preds = %dec_label_pc_25545
  call void @__stack_chk_fail()
  br label %dec_label_pc_255d3

dec_label_pc_255d3:                               ; preds = %dec_label_pc_255ce, %dec_label_pc_25545
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

