@global_var_b1b4f = external constant [21 x i8]
@0 = external global i32
@global_var_dc348 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8ccab:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc348, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_8cce9, label %dec_label_pc_8ccd8

dec_label_pc_8ccd8:                               ; preds = %dec_label_pc_8ccab
  call void @printLine(ptr @global_var_b1b4f)
  store ptr null, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_8ccf7

dec_label_pc_8cce9:                               ; preds = %dec_label_pc_8ccab
  %3 = call i64 @_Znam(i64 11)
  %4 = inttoptr i64 %3 to ptr
  store ptr %4, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_8ccf7

dec_label_pc_8ccf7:                               ; preds = %dec_label_pc_8cce9, %dec_label_pc_8ccd8
  %stack_var_-40.0.reload = load ptr, ptr %stack_var_-40.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = add i32 %6, 1
  %8 = call ptr @strncpy(ptr %stack_var_-40.0.reload, ptr nonnull %5, i32 %7)
  call void @printLine(ptr %stack_var_-40.0.reload)
  %9 = icmp eq ptr %stack_var_-40.0.reload, null
  br i1 %9, label %dec_label_pc_8cd51, label %dec_label_pc_8cd45

dec_label_pc_8cd45:                               ; preds = %dec_label_pc_8ccf7
  %10 = ptrtoint ptr %stack_var_-27 to i64
  %11 = bitcast ptr %stack_var_-40.0.reload to ptr
  %12 = and i64 %10, 4294967288
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %11, ptr %13)
  br label %dec_label_pc_8cd51

dec_label_pc_8cd51:                               ; preds = %dec_label_pc_8cd45, %dec_label_pc_8ccf7
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_8cd66, label %dec_label_pc_8cd61

dec_label_pc_8cd61:                               ; preds = %dec_label_pc_8cd51
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8cd66

dec_label_pc_8cd66:                               ; preds = %dec_label_pc_8cd61, %dec_label_pc_8cd51
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

