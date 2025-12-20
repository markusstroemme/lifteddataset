@0 = external global i32
@global_var_dc084 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_873ad:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc084, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-40.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_873e9, label %dec_label_pc_873db

dec_label_pc_873db:                               ; preds = %dec_label_pc_873ad
  %4 = call i64 @_Znam(i64 11)
  %5 = inttoptr i64 %4 to ptr
  store ptr %5, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_873e9

dec_label_pc_873e9:                               ; preds = %dec_label_pc_873db, %dec_label_pc_873ad
  %stack_var_-40.0.reload = load ptr, ptr %stack_var_-40.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %6 = bitcast ptr %stack_var_-27 to ptr
  %7 = call i32 @strlen(ptr nonnull %6)
  %8 = add i32 %7, 1
  %9 = bitcast ptr %stack_var_-40.0.reload to ptr
  %10 = call ptr @memmove(ptr %9, ptr nonnull %stack_var_-27, i32 %8)
  call void @printLine(ptr %stack_var_-40.0.reload)
  %11 = icmp eq ptr %stack_var_-40.0.reload, null
  br i1 %11, label %dec_label_pc_87443, label %dec_label_pc_87437

dec_label_pc_87437:                               ; preds = %dec_label_pc_873e9
  %12 = ptrtoint ptr %stack_var_-27 to i64
  %13 = and i64 %12, 4294967288
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %9, ptr %14)
  br label %dec_label_pc_87443

dec_label_pc_87443:                               ; preds = %dec_label_pc_87437, %dec_label_pc_873e9
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_87458, label %dec_label_pc_87453

dec_label_pc_87453:                               ; preds = %dec_label_pc_87443
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_87458

dec_label_pc_87458:                               ; preds = %dec_label_pc_87453, %dec_label_pc_87443
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

