@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_50dcd:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBadBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_50e18

dec_label_pc_50e18:                               ; preds = %dec_label_pc_50e18, %dec_label_pc_50dcd
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_50e2f, label %dec_label_pc_50e18

dec_label_pc_50e2f:                               ; preds = %dec_label_pc_50e18
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_50e9c

dec_label_pc_50e9c:                               ; preds = %dec_label_pc_50e9c, %dec_label_pc_50e2f
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_50eb3, label %dec_label_pc_50e9c

dec_label_pc_50eb3:                               ; preds = %dec_label_pc_50e9c
  %8 = and i64 %5, -16
  %9 = bitcast ptr %dataBadBuffer_-40 to ptr
  store i64 %8, ptr %9, align 8
  call void @anon1(ptr nonnull %dataBadBuffer_-40)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_50f19, label %dec_label_pc_50f14

dec_label_pc_50f14:                               ; preds = %dec_label_pc_50eb3
  call void @__stack_chk_fail()
  br label %dec_label_pc_50f19

dec_label_pc_50f19:                               ; preds = %dec_label_pc_50f14, %dec_label_pc_50eb3
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_5107e:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 50)
  %4 = bitcast ptr %dataPtr to ptr
  %5 = call ptr @memmove(ptr %4, ptr nonnull %stack_var_-424, i32 400)
  %6 = trunc i64 %1 to i32
  call void @printIntLine(i32 %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %2, %7
  br i1 %8, label %dec_label_pc_5110e, label %dec_label_pc_51109

dec_label_pc_51109:                               ; preds = %dec_label_pc_5107e
  call void @__stack_chk_fail()
  br label %dec_label_pc_5110e

dec_label_pc_5110e:                               ; preds = %dec_label_pc_51109, %dec_label_pc_5107e
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

