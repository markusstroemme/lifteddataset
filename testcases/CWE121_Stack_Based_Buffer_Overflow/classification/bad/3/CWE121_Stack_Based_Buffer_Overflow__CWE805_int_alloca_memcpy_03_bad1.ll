@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_40d83:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %dataBadBuffer_-456 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-456 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_40dd1

dec_label_pc_40dd1:                               ; preds = %dec_label_pc_40dd1, %dec_label_pc_40d83
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_40de8, label %dec_label_pc_40dd1

dec_label_pc_40de8:                               ; preds = %dec_label_pc_40dd1
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_40e58

dec_label_pc_40e58:                               ; preds = %dec_label_pc_40e58, %dec_label_pc_40de8
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_40e6f, label %dec_label_pc_40e58

dec_label_pc_40e6f:                               ; preds = %dec_label_pc_40e58
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  %10 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %10, i64 0, i64 50)
  %11 = inttoptr i64 %8 to ptr
  %12 = call ptr @memcpy(ptr %11, ptr nonnull %stack_var_-424, i32 400)
  %13 = load i32, ptr %9, align 16
  call void @printIntLine(i32 %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_40f17, label %dec_label_pc_40f12

dec_label_pc_40f12:                               ; preds = %dec_label_pc_40e6f
  call void @__stack_chk_fail()
  br label %dec_label_pc_40f17

dec_label_pc_40f17:                               ; preds = %dec_label_pc_40f12, %dec_label_pc_40e6f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

