@0 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_77f6c:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  %1 = call i64 @_Znam(i64 10)
  store i64 %1, ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_77fa2:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %result to ptr
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call ptr @strcpy(ptr %1, ptr nonnull %2)
  call void @printLine(ptr %1)
  %4 = icmp eq ptr %result, null
  br i1 %4, label %dec_label_pc_78019, label %dec_label_pc_7800a

dec_label_pc_7800a:                               ; preds = %dec_label_pc_77fa2
  %5 = ptrtoint ptr %stack_var_-27 to i64
  %6 = and i64 %5, 4294967288
  %7 = inttoptr i64 %6 to ptr
  call void @_ZdaPv(ptr nonnull %result, ptr %7)
  br label %dec_label_pc_78019

dec_label_pc_78019:                               ; preds = %dec_label_pc_7800a, %dec_label_pc_77fa2
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_7802e, label %dec_label_pc_78029

dec_label_pc_78029:                               ; preds = %dec_label_pc_78019
  call void @__stack_chk_fail()
  br label %dec_label_pc_7802e

dec_label_pc_7802e:                               ; preds = %dec_label_pc_78029, %dec_label_pc_78019
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_780f4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-32, ptr null)
  call void @anon1(ptr nonnull %stack_var_-32)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_7814a, label %dec_label_pc_78145

dec_label_pc_78145:                               ; preds = %dec_label_pc_780f4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7814a

dec_label_pc_7814a:                               ; preds = %dec_label_pc_78145, %dec_label_pc_780f4
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

