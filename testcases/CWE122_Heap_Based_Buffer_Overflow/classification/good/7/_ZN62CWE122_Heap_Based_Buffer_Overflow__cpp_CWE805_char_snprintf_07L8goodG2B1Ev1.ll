@global_var_527f7 = external constant [3 x i8]
@global_var_527fa = external constant [21 x i8]
@0 = external global i32
@global_var_6c044 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2ffe4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c044, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_30023, label %dec_label_pc_30012

dec_label_pc_30012:                               ; preds = %dec_label_pc_2ffe4
  call void @printLine(ptr @global_var_527fa)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_30038

dec_label_pc_30023:                               ; preds = %dec_label_pc_2ffe4
  %3 = call i64 @_Znam(i64 100)
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store ptr %4, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_30038

dec_label_pc_30038:                               ; preds = %dec_label_pc_30023, %dec_label_pc_30012
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %stack_var_-128.0.reload, i32 100, ptr @global_var_527f7, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %7 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %7, label %dec_label_pc_30095, label %dec_label_pc_30089

dec_label_pc_30089:                               ; preds = %dec_label_pc_30038
  %8 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @_ZdaPv(ptr %8, ptr inttoptr (i64 100 to ptr))
  br label %dec_label_pc_30095

dec_label_pc_30095:                               ; preds = %dec_label_pc_30089, %dec_label_pc_30038
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_300aa, label %dec_label_pc_300a5

dec_label_pc_300a5:                               ; preds = %dec_label_pc_30095
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_300aa

dec_label_pc_300aa:                               ; preds = %dec_label_pc_300a5, %dec_label_pc_30095
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

