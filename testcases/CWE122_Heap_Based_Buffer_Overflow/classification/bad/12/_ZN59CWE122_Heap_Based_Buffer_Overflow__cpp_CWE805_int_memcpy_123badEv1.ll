@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_42119:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_42163, label %dec_label_pc_42150

dec_label_pc_42150:                               ; preds = %dec_label_pc_42119
  %5 = call i64 @_Znam(i64 200)
  store i64 %5, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_42174

dec_label_pc_42163:                               ; preds = %dec_label_pc_42119
  %6 = call i64 @_Znam(i64 400)
  store i64 %6, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_42174

dec_label_pc_42174:                               ; preds = %dec_label_pc_42163, %dec_label_pc_42150
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %7 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 50)
  %8 = inttoptr i64 %storemerge.reload to ptr
  %9 = call ptr @memcpy(ptr %8, ptr nonnull %stack_var_-424, i32 400)
  %10 = inttoptr i64 %storemerge.reload to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %12 = icmp eq i64 %storemerge.reload, 0
  br i1 %12, label %dec_label_pc_421d2, label %dec_label_pc_421c3

dec_label_pc_421c3:                               ; preds = %dec_label_pc_42174
  %13 = ptrtoint ptr %stack_var_-424 to i64
  %14 = and i64 %13, 4294967288
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %8, ptr %15)
  br label %dec_label_pc_421d2

dec_label_pc_421d2:                               ; preds = %dec_label_pc_421c3, %dec_label_pc_42174
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_421e7, label %dec_label_pc_421e2

dec_label_pc_421e2:                               ; preds = %dec_label_pc_421d2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_421e7

dec_label_pc_421e7:                               ; preds = %dec_label_pc_421e2, %dec_label_pc_421d2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4dea6:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

