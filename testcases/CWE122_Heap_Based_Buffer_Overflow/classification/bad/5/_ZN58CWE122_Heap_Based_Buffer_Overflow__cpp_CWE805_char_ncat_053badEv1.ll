@0 = external global i32
@global_var_6c030 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2311a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c030, align 4
  %2 = icmp eq i32 %1, 0
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2315c, label %dec_label_pc_23147

dec_label_pc_23147:                               ; preds = %dec_label_pc_2311a
  %3 = call i64 @_Znam(i64 50)
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store ptr %4, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_2315c

dec_label_pc_2315c:                               ; preds = %dec_label_pc_23147, %dec_label_pc_2311a
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = bitcast ptr %stack_var_-120 to ptr
  %7 = call ptr @strncat(ptr %stack_var_-128.0.reload, ptr nonnull %6, i32 100)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %8 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %8, label %dec_label_pc_231ad, label %dec_label_pc_231a1

dec_label_pc_231a1:                               ; preds = %dec_label_pc_2315c
  %9 = ptrtoint ptr %stack_var_-120 to i64
  %10 = bitcast ptr %stack_var_-128.0.reload to ptr
  %11 = and i64 %9, 4294967288
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  br label %dec_label_pc_231ad

dec_label_pc_231ad:                               ; preds = %dec_label_pc_231a1, %dec_label_pc_2315c
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_231c2, label %dec_label_pc_231bd

dec_label_pc_231bd:                               ; preds = %dec_label_pc_231ad
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_231c2

dec_label_pc_231c2:                               ; preds = %dec_label_pc_231bd, %dec_label_pc_231ad
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

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

