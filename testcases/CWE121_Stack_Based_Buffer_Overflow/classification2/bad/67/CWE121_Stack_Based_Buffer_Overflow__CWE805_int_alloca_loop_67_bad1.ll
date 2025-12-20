@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3fd07:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %myStruct_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %myStruct_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3fd52

dec_label_pc_3fd52:                               ; preds = %dec_label_pc_3fd52, %dec_label_pc_3fd07
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3fd69, label %dec_label_pc_3fd52

dec_label_pc_3fd69:                               ; preds = %dec_label_pc_3fd52
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3fdd6

dec_label_pc_3fdd6:                               ; preds = %dec_label_pc_3fdd6, %dec_label_pc_3fd69
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3fded, label %dec_label_pc_3fdd6

dec_label_pc_3fded:                               ; preds = %dec_label_pc_3fdd6
  %7 = add i64 %4, 15
  %8 = and i64 %7, -16
  call void @anon1(i64 %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %1, %9
  br i1 %10, label %dec_label_pc_3fe5b, label %dec_label_pc_3fe56

dec_label_pc_3fe56:                               ; preds = %dec_label_pc_3fded
  call void @__stack_chk_fail()
  br label %dec_label_pc_3fe5b

dec_label_pc_3fe5b:                               ; preds = %dec_label_pc_3fe56, %dec_label_pc_3fded
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_3ffc8:
  %storemerge1.reg2mem = alloca ptr, align 8
  %rdi = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = add i64 %0, -416
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_4001f

dec_label_pc_4001f:                               ; preds = %dec_label_pc_3ffc8, %dec_label_pc_4001f
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge1.reload to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %5, %myStruct
  %7 = add i64 %3, %5
  %8 = inttoptr i64 %7 to ptr
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i64 %6 to ptr
  store i32 %9, ptr %10, align 4
  %11 = add i64 %4, 1
  %12 = inttoptr i64 %11 to ptr
  %13 = icmp ugt ptr %12, inttoptr (i64 99 to ptr)
  store ptr %12, ptr %storemerge1.reg2mem, align 8
  br i1 %13, label %dec_label_pc_4005a, label %dec_label_pc_4001f

dec_label_pc_4005a:                               ; preds = %dec_label_pc_4001f
  %14 = bitcast ptr %rdi to ptr
  %15 = load i32, ptr %14, align 8
  call void @printIntLine(i32 %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_4007f, label %dec_label_pc_4007a

dec_label_pc_4007a:                               ; preds = %dec_label_pc_4005a
  call void @__stack_chk_fail()
  br label %dec_label_pc_4007f

dec_label_pc_4007f:                               ; preds = %dec_label_pc_4007a, %dec_label_pc_4005a
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

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

