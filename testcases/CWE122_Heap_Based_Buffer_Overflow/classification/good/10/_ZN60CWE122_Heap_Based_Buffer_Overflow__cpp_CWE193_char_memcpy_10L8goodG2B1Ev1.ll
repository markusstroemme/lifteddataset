@global_var_b1207 = external constant [21 x i8]
@0 = external global i32
@global_var_dc348 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_808f8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc348, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_80936, label %dec_label_pc_80925

dec_label_pc_80925:                               ; preds = %dec_label_pc_808f8
  call void @printLine(ptr @global_var_b1207)
  store ptr null, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_80944

dec_label_pc_80936:                               ; preds = %dec_label_pc_808f8
  %3 = call i64 @_Znam(i64 11)
  %4 = inttoptr i64 %3 to ptr
  store ptr %4, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_80944

dec_label_pc_80944:                               ; preds = %dec_label_pc_80936, %dec_label_pc_80925
  %stack_var_-40.0.reload = load ptr, ptr %stack_var_-40.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = add i32 %6, 1
  %8 = bitcast ptr %stack_var_-40.0.reload to ptr
  %9 = call ptr @memcpy(ptr %8, ptr nonnull %stack_var_-27, i32 %7)
  call void @printLine(ptr %stack_var_-40.0.reload)
  %10 = icmp eq ptr %stack_var_-40.0.reload, null
  br i1 %10, label %dec_label_pc_8099e, label %dec_label_pc_80992

dec_label_pc_80992:                               ; preds = %dec_label_pc_80944
  %11 = ptrtoint ptr %stack_var_-27 to i64
  %12 = and i64 %11, 4294967288
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %8, ptr %13)
  br label %dec_label_pc_8099e

dec_label_pc_8099e:                               ; preds = %dec_label_pc_80992, %dec_label_pc_80944
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_809b3, label %dec_label_pc_809ae

dec_label_pc_809ae:                               ; preds = %dec_label_pc_8099e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_809b3

dec_label_pc_809b3:                               ; preds = %dec_label_pc_809ae, %dec_label_pc_8099e
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

