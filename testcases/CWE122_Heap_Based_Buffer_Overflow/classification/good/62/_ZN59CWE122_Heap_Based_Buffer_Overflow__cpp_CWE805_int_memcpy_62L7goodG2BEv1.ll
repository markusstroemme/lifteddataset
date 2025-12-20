@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_44e0b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-432 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-432, align 8
  %1 = bitcast ptr %stack_var_-432 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  %3 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 50)
  %4 = load i64, ptr %stack_var_-432, align 8
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memcpy(ptr %5, ptr nonnull %stack_var_-424, i32 400)
  %7 = load i64, ptr %stack_var_-432, align 8
  %8 = inttoptr i64 %7 to ptr
  %9 = load i32, ptr %8, align 4
  call void @printIntLine(i32 %9)
  %10 = load i64, ptr %stack_var_-432, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %dec_label_pc_44ea3, label %dec_label_pc_44e94

dec_label_pc_44e94:                               ; preds = %dec_label_pc_44e0b
  %12 = ptrtoint ptr %stack_var_-424 to i64
  %13 = inttoptr i64 %10 to ptr
  %14 = and i64 %12, 4294967288
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %13, ptr %15)
  br label %dec_label_pc_44ea3

dec_label_pc_44ea3:                               ; preds = %dec_label_pc_44e94, %dec_label_pc_44e0b
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_44eb8, label %dec_label_pc_44eb3

dec_label_pc_44eb3:                               ; preds = %dec_label_pc_44ea3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_44eb8

dec_label_pc_44eb8:                               ; preds = %dec_label_pc_44eb3, %dec_label_pc_44ea3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_44ef1:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = call i64 @_Znam(i64 400)
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 %0
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

