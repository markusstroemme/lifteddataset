@global_var_b0a07 = external constant [21 x i8]
@0 = external global i32
@global_var_dc214 = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_70422:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_dc214, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_7044d, label %dec_label_pc_7043c

dec_label_pc_7043c:                               ; preds = %dec_label_pc_70422
  call void @printLine(ptr @global_var_b0a07)
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_7045b

dec_label_pc_7044d:                               ; preds = %dec_label_pc_70422
  %2 = call i64 @_Znam(i64 11)
  %3 = inttoptr i64 %2 to ptr
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_7045b

dec_label_pc_7045b:                               ; preds = %dec_label_pc_7044d, %dec_label_pc_7043c
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_70461:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_dc214, align 4
  %1 = call i64 @anon0(ptr null)
  %2 = inttoptr i64 %1 to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call ptr @strcpy(ptr %2, ptr nonnull %3)
  call void @printLine(ptr %2)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %dec_label_pc_704e8, label %dec_label_pc_704dc

dec_label_pc_704dc:                               ; preds = %dec_label_pc_70461
  %6 = ptrtoint ptr %stack_var_-27 to i64
  %7 = inttoptr i64 %1 to ptr
  %8 = and i64 %6, 4294967288
  %9 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr %7, ptr %9)
  br label %dec_label_pc_704e8

dec_label_pc_704e8:                               ; preds = %dec_label_pc_704dc, %dec_label_pc_70461
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_704fd, label %dec_label_pc_704f8

dec_label_pc_704f8:                               ; preds = %dec_label_pc_704e8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_704fd

dec_label_pc_704fd:                               ; preds = %dec_label_pc_704f8, %dec_label_pc_704e8
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

