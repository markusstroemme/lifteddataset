@global_var_527f7 = external constant [3 x i8]
@0 = external global i32
@global_var_6c044 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2ff2d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c044, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_2ff70, label %dec_label_pc_2ff5b

dec_label_pc_2ff5b:                               ; preds = %dec_label_pc_2ff2d
  %4 = call i64 @_Znam(i64 50)
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_2ff70

dec_label_pc_2ff70:                               ; preds = %dec_label_pc_2ff5b, %dec_label_pc_2ff2d
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %6 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %stack_var_-128.0.reload, i32 100, ptr @global_var_527f7, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %8 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %8, label %dec_label_pc_2ffcd, label %dec_label_pc_2ffc1

dec_label_pc_2ffc1:                               ; preds = %dec_label_pc_2ff70
  %9 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @_ZdaPv(ptr %9, ptr inttoptr (i64 100 to ptr))
  br label %dec_label_pc_2ffcd

dec_label_pc_2ffcd:                               ; preds = %dec_label_pc_2ffc1, %dec_label_pc_2ff70
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_2ffe2, label %dec_label_pc_2ffdd

dec_label_pc_2ffdd:                               ; preds = %dec_label_pc_2ffcd
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2ffe2

dec_label_pc_2ffe2:                               ; preds = %dec_label_pc_2ffdd, %dec_label_pc_2ffcd
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

