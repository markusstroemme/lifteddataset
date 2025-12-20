@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4ea77:
  %rsp.0.reg2mem = alloca i64, align 8
  %myStruct_-40 = alloca i64, align 8
  %0 = ptrtoint ptr %myStruct_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4eac8

dec_label_pc_4eac8:                               ; preds = %dec_label_pc_4eac8, %dec_label_pc_4ea77
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4eadf, label %dec_label_pc_4eac8

dec_label_pc_4eadf:                               ; preds = %dec_label_pc_4eac8
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  call void @anon1(i64 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %1, %6
  br i1 %7, label %dec_label_pc_4eb45, label %dec_label_pc_4eb40

dec_label_pc_4eb40:                               ; preds = %dec_label_pc_4eadf
  call void @__stack_chk_fail()
  br label %dec_label_pc_4eb45

dec_label_pc_4eb45:                               ; preds = %dec_label_pc_4eb40, %dec_label_pc_4eadf
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_4ec2c:
  %storemerge1.reg2mem = alloca ptr, align 8
  %rdi = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -48
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_4ec85

dec_label_pc_4ec85:                               ; preds = %dec_label_pc_4ec2c, %dec_label_pc_4ec85
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %3 = ptrtoint ptr %storemerge1.reload to i64
  %4 = mul i64 %3, 4
  %5 = add i64 %4, %myStruct
  %6 = add i64 %2, %4
  %7 = inttoptr i64 %6 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i64 %5 to ptr
  store i32 %8, ptr %9, align 4
  %10 = add i64 %3, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 9 to ptr)
  store ptr %11, ptr %storemerge1.reg2mem, align 8
  br i1 %12, label %dec_label_pc_4ecae, label %dec_label_pc_4ec85

dec_label_pc_4ecae:                               ; preds = %dec_label_pc_4ec85
  %13 = bitcast ptr %rdi to ptr
  %14 = load i32, ptr %13, align 8
  call void @printIntLine(i32 %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_4ecd0, label %dec_label_pc_4eccb

dec_label_pc_4eccb:                               ; preds = %dec_label_pc_4ecae
  call void @__stack_chk_fail()
  br label %dec_label_pc_4ecd0

dec_label_pc_4ecd0:                               ; preds = %dec_label_pc_4eccb, %dec_label_pc_4ecae
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

