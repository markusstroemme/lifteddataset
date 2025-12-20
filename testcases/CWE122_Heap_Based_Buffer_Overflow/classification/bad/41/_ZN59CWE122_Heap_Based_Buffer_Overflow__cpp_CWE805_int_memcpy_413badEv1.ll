@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_43af4:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 50)
  %4 = bitcast ptr %arg1 to ptr
  %5 = call ptr @memcpy(ptr %4, ptr nonnull %stack_var_-424, i32 400)
  %6 = trunc i64 %1 to i32
  call void @printIntLine(i32 %6)
  %7 = icmp eq ptr %arg1, null
  br i1 %7, label %dec_label_pc_43b77, label %dec_label_pc_43b68

dec_label_pc_43b68:                               ; preds = %dec_label_pc_43af4
  %8 = ptrtoint ptr %stack_var_-424 to i64
  %9 = and i64 %8, 4294967288
  %10 = inttoptr i64 %9 to ptr
  call void @_ZdaPv(ptr %4, ptr %10)
  br label %dec_label_pc_43b77

dec_label_pc_43b77:                               ; preds = %dec_label_pc_43b68, %dec_label_pc_43af4
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %2, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_43b8c, label %dec_label_pc_43b87

dec_label_pc_43b87:                               ; preds = %dec_label_pc_43b77
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_43b8c

dec_label_pc_43b8c:                               ; preds = %dec_label_pc_43b87, %dec_label_pc_43b77
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_43b8e:
  %0 = call i64 @_Znam(i64 200)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @anon0(ptr %1)
  ret i64 %2
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

