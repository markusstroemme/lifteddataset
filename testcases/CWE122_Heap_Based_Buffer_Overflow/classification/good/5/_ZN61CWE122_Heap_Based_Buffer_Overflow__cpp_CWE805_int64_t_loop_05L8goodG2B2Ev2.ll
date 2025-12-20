@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32
@global_var_7f028 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1c125:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-840.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @global_var_7f028, align 4
  %4 = icmp eq i32 %3, 0
  store i64 0, ptr %stack_var_-840.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_1c169, label %dec_label_pc_1c158

dec_label_pc_1c158:                               ; preds = %dec_label_pc_1c125
  %5 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %5, ptr %stack_var_-840.0.reg2mem, align 8
  br label %dec_label_pc_1c169

dec_label_pc_1c169:                               ; preds = %dec_label_pc_1c158, %dec_label_pc_1c125
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.reload = load i64, ptr %stack_var_-840.0.reg2mem, align 8
  %7 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 100)
  %8 = add i64 %6, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1c18d

dec_label_pc_1c18d:                               ; preds = %dec_label_pc_1c18d, %dec_label_pc_1c169
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %9 = mul i64 %storemerge1.reload, 8
  %10 = add i64 %9, %stack_var_-840.0.reload
  %11 = add i64 %8, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %10 to ptr
  store i64 %13, ptr %14, align 8
  %15 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %15, 100
  store i64 %15, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1c1ca, label %dec_label_pc_1c18d

dec_label_pc_1c1ca:                               ; preds = %dec_label_pc_1c18d
  %16 = inttoptr i64 %stack_var_-840.0.reload to ptr
  %17 = load i64, ptr %16, align 8
  call void @printLongLongLine(i64 %17)
  %18 = icmp eq i64 %stack_var_-840.0.reload, 0
  br i1 %18, label %dec_label_pc_1c1f5, label %dec_label_pc_1c1e6

dec_label_pc_1c1e6:                               ; preds = %dec_label_pc_1c1ca
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %16, ptr %20)
  br label %dec_label_pc_1c1f5

dec_label_pc_1c1f5:                               ; preds = %dec_label_pc_1c1e6, %dec_label_pc_1c1ca
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %2, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_1c20a, label %dec_label_pc_1c205

dec_label_pc_1c205:                               ; preds = %dec_label_pc_1c1f5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1c20a

dec_label_pc_1c20a:                               ; preds = %dec_label_pc_1c205, %dec_label_pc_1c1f5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

