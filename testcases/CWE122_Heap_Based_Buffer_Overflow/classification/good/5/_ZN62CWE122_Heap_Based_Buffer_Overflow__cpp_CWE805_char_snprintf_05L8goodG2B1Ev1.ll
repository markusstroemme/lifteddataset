@global_var_527d7 = external constant [3 x i8]
@global_var_527da = external constant [21 x i8]
@0 = external global i32
@global_var_6c198 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2fb82:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c198, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2fbc0, label %dec_label_pc_2fbaf

dec_label_pc_2fbaf:                               ; preds = %dec_label_pc_2fb82
  call void @printLine(ptr @global_var_527da)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_2fbd5

dec_label_pc_2fbc0:                               ; preds = %dec_label_pc_2fb82
  %3 = call i64 @_Znam(i64 100)
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store ptr %4, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_2fbd5

dec_label_pc_2fbd5:                               ; preds = %dec_label_pc_2fbc0, %dec_label_pc_2fbaf
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %stack_var_-128.0.reload, i32 100, ptr @global_var_527d7, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %7 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %7, label %dec_label_pc_2fc32, label %dec_label_pc_2fc26

dec_label_pc_2fc26:                               ; preds = %dec_label_pc_2fbd5
  %8 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @_ZdaPv(ptr %8, ptr inttoptr (i64 100 to ptr))
  br label %dec_label_pc_2fc32

dec_label_pc_2fc32:                               ; preds = %dec_label_pc_2fc26, %dec_label_pc_2fbd5
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_2fc47, label %dec_label_pc_2fc42

dec_label_pc_2fc42:                               ; preds = %dec_label_pc_2fc32
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2fc47

dec_label_pc_2fc47:                               ; preds = %dec_label_pc_2fc42, %dec_label_pc_2fc32
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

